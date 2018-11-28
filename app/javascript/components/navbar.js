
const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-island');
  if (navbar) {
    window.addEventListener('scroll', (event) => {
      if (window.scrollY >= (window.innerHeight)*0.7) {
        navbar.classList.add('navbar-island-blue');
      } else {
        navbar.classList.remove('navbar-island-blue');
      }
    });
  }
};

export { initUpdateNavbarOnScroll };
