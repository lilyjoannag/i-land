const carouselShow = () => {
  $(document).ready(function(){
    $('.carousel-show').slick({
      infinite: true,
      autoplay: 4000,
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: false,
      dots: true,
    });
  });
};

export {carouselShow}
