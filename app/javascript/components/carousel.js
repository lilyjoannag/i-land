


const carousel = () => {
  $(document).ready(function(){
    $('.carousel-index').slick({
      infinite: true,
      slidesToShow: 3,
      slidesToScroll: 3,
      arrows: true,
      nextArrow: '<i class="fas fa-angle-right"></i>',
      prevArrow: '<i class="fas fa-angle-left"></i>',
    });
  });
};

export {carousel}
