document.addEventListener("DOMContentLoaded", function () {
  const menus = document.querySelectorAll(".language-menu");

  menus.forEach(function (menu) {
    const button = menu.querySelector(".language-menu-button");
    const dropdown = menu.querySelector(".language-menu-dropdown");

    if (!button || !dropdown) {
      return;
    }

    button.addEventListener("click", function (event) {
      event.stopPropagation();

      const isOpen = menu.classList.toggle("is-open");
      button.setAttribute("aria-expanded", String(isOpen));
    });

    document.addEventListener("click", function (event) {
      if (!menu.contains(event.target)) {
        menu.classList.remove("is-open");
        button.setAttribute("aria-expanded", "false");
      }
    });

    document.addEventListener("keydown", function (event) {
      if (event.key === "Escape") {
        menu.classList.remove("is-open");
        button.setAttribute("aria-expanded", "false");
        button.focus();
      }
    });
  });
});