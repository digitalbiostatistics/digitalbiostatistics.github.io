/* The English masthead has its own responsive navigation. */
(() => {
  const toggle = document.querySelector('.mbzuai-menu-toggle');
  const nav = document.getElementById('mbzuai-navigation');
  if (!toggle || !nav) return;
  const close = () => toggle.setAttribute('aria-expanded', 'false');
  toggle.addEventListener('click', () => {
    toggle.setAttribute('aria-expanded', String(toggle.getAttribute('aria-expanded') !== 'true'));
  });
  nav.addEventListener('click', (event) => {
    if (event.target.closest('a')) close();
  });
  document.addEventListener('keydown', (event) => {
    if (event.key === 'Escape' && toggle.getAttribute('aria-expanded') === 'true') {
      close();
      toggle.focus();
    }
  });
})();
