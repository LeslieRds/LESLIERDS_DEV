document.addEventListener("DOMContentLoaded", function() {
  const elements = document.querySelectorAll('.animate-on-scroll');

  function isVisible(elem) {
    let bounding = elem.getBoundingClientRect();
    return (
      bounding.top < window.innerHeight && bounding.bottom > 0
    );
  }

  function checkVisibility() {
    for (let i = 0; i < elements.length; i++) {
      if (isVisible(elements[i])) {
        elements[i].classList.add('visible');
      }
    }
  }

  window.addEventListener('scroll', checkVisibility);
  checkVisibility(); // Pour vérifier la visibilité au chargement de la page
});
