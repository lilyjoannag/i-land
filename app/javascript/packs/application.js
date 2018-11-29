import "bootstrap";
import "slick-carousel";
import { initUpdateNavbarOnScroll } from '../components/navbar';
//import { initMap } from '../components/map';

import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import { carouselIndex } from "../components/carousel-index.js";
import { carouselShow } from "../components/carousel-show.js";
import { initAutocomplete } from "../plugins/init_autocomplete";
carouselIndex();
carouselShow();
initUpdateNavbarOnScroll();
//initMap();
initAutocomplete();
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();
