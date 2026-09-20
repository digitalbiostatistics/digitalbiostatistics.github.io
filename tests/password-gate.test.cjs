const { test } = require('node:test');
const assert = require('node:assert/strict');
const { createHash, webcrypto } = require('node:crypto');
const fs = require('node:fs');
const path = require('node:path');
const vm = require('node:vm');

const source = fs.readFileSync(path.join(__dirname, '../_scripts/password-gate.js'), 'utf8');
const sections = ['team', 'projects', 'education', 'philosophy'];
const password = (section) => `fixture-${section}`;
const hash = (value) => createHash('sha256').update(value).digest('hex');
const key = (section) => `digitalbiostatistics:section-unlocked:${section}`;

// Exercise navigation with a shared storage map, without storing real passwords.
function loadPage(section, saved = new Map(), storageBlocked = false) {
  const classes = new Set(['mbzuai-theme', ...(section ? ['is-password-locked'] : [])]);
  const input = { value: '', focus() {} };
  const error = { hidden: true };
  let submit;
  const form = { addEventListener(event, callback) { if (event === 'submit') submit = callback; } };
  const gate = section ? {
    hidden: false,
    dataset: { passwordHash: hash(password(section)), passwordStorageKey: key(section) },
    querySelector(selector) {
      return { '[data-password-form]': form, '[data-password-input]': input, '[data-password-error]': error }[selector];
    }
  } : null;
  const document = {
    readyState: 'complete',
    documentElement: { classList: { add: (name) => classes.add(name), remove: (name) => classes.delete(name) } },
    querySelector: () => gate
  };
  const window = {
    crypto: webcrypto,
    setTimeout: (callback) => callback(),
    localStorage: {
      getItem(name) {
        if (storageBlocked) throw new Error('Storage unavailable');
        return saved.get(name) ?? null;
      },
      setItem(name, value) {
        if (storageBlocked) throw new Error('Storage unavailable');
        saved.set(name, value);
      }
    }
  };
  vm.runInNewContext(source, { document, window, TextEncoder, Uint8Array });
  return {
    gate, classes, error, input,
    async enter(value) {
      assert.ok(submit, 'Locked pages must initialize the password form');
      input.value = value;
      await submit({ preventDefault() {} });
    }
  };
}

test('public pages stay open and do not change saved access', () => {
  const saved = new Map([['digitalbiostatistics:site-unlocked', 'old-value']]);
  const page = loadPage(null, saved);
  assert.equal(page.gate, null);
  assert.equal(page.classes.has('is-password-locked'), false);
  assert.equal(saved.size, 1);
});

test('legacy whole-site access cannot unlock any section', () => {
  for (const section of sections) {
    const page = loadPage(section, new Map([['digitalbiostatistics:site-unlocked', hash(password(section))]]));
    assert.equal(page.gate.hidden, false);
    assert.equal(page.classes.has('is-password-locked'), true);
  }
});

test('each password unlocks and remembers only its own section', async () => {
  for (const section of sections) {
    const saved = new Map();
    const page = loadPage(section, saved);
    await page.enter(password(section));
    assert.equal(page.gate.hidden, true);
    assert.equal(page.classes.has('is-password-locked'), false);
    assert.equal(page.input.value, '');
    assert.deepEqual([...saved], [[key(section), hash(password(section))]]);
    assert.equal(loadPage(section, saved).gate.hidden, true);
    for (const other of sections.filter((name) => name !== section)) {
      assert.equal(loadPage(other, saved).gate.hidden, false);
    }
  }
});

test('passwords from every other section are rejected', async () => {
  for (const section of sections) {
    for (const other of sections.filter((name) => name !== section)) {
      const saved = new Map();
      const page = loadPage(section, saved);
      await page.enter(password(other));
      assert.equal(page.error.hidden, false);
      assert.equal(page.gate.hidden, false);
      assert.equal(page.classes.has('is-password-locked'), true);
      assert.equal(saved.size, 0);
    }
  }
});

test('stale saved credentials no longer grant access after a password change', () => {
  const page = loadPage('team', new Map([[key('team'), hash('previous-password')]]));
  assert.equal(page.gate.hidden, false);
  assert.equal(page.classes.has('is-password-locked'), true);
});

test('a correct password still works when browser storage is unavailable', async () => {
  const saved = new Map();
  const page = loadPage('education', saved, true);
  await page.enter(password('projects'));
  assert.equal(page.gate.hidden, false);
  await page.enter(password('education'));
  assert.equal(page.gate.hidden, true);
  assert.equal(page.classes.has('is-password-locked'), false);
  assert.equal(saved.size, 0);
});
