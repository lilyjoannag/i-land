import "bootstrap";
// import {carousel} from "components/carousel"
import "slick-carousel"

import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

const carousel = () => {
  $(document).ready(function(){
    $('.carousel').slick({
      infinite: true,
      slidesToShow: 3,
      slidesToScroll: 3,
      arrows: true,
      nextArrow: '<i class="fas fa-angle-right"></i>',
      prevArrow: '<i class="fas fa-angle-left"></i>',
    });
  });
};

carousel()
