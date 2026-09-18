// Labels used by controls after the initial page render.
window.siteTranslate = function (text, values = {}) {
  const data = document.getElementById("site-translations");
  const dictionary = data ? JSON.parse(data.textContent) : {};
  let result = dictionary[text] || text;
  for (const [key, value] of Object.entries(values)) result = result.replaceAll(`{${key}}`, String(value));
  return result;
};
