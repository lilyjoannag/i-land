import "bootstrap";
import "slick-carousel";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initMap } from '../components/map';

import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import { carousel } from "../components/carousel.js";
import { initAutocomplete } from "../plugins/init_autocomplete";
carousel();
initUpdateNavbarOnScroll();
initMap();
initAutocomplete();
