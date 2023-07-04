  $('.web-share--slider').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: true,
    prevArrow:
      '<button type=\'button\' class=\'slick-prev\'><svg xmlns="http://www.w3.org/2000/svg" width="41" height="40" fill="none"><rect width="40.938" height="40" rx="20" fill="#fff" fill-opacity=".9"/><path d="M16.275 10.275a.94.94 0 0 0 0 1.326l8.4 8.4-8.399 8.4a.94.94 0 0 0 0 1.326.94.94 0 0 0 1.326 0l9.063-9.062a.94.94 0 0 0 0-1.326L17.6 10.275a.94.94 0 0 0-1.326 0z" fill="#000"/></svg></button>',
    nextArrow:
      '<button type=\'button\' class=\'slick-next\'><svg xmlns="http://www.w3.org/2000/svg" width="41" height="40" fill="none"><rect width="40.938" height="40" rx="20" fill="#fff" fill-opacity=".9"/><path d="M16.275 10.275a.94.94 0 0 0 0 1.326l8.4 8.4-8.399 8.4a.94.94 0 0 0 0 1.326.94.94 0 0 0 1.326 0l9.063-9.062a.94.94 0 0 0 0-1.326L17.6 10.275a.94.94 0 0 0-1.326 0z" fill="#000"/></svg></button>',
    infinite: false,
  });
  $('.hero .slick-prev').click(function () {
    $('.hero-slider').slick('slickPrev');
    $('.hero-slider-nav').slick('slickPrev');
  });
  $('.hero .slick-next').click(function () {
    $('.hero-slider').slick('slickNext');
    $('.hero-slider-nav').slick('slickNext');
  });

  $('.carousel').slick({
    dots: false,
    infinite: true,
    slidesToShow: 1,
    variableWidth: true,
    autoplay: true,
    autoplaySpeed: 4000,
    arrows: true,
    lazyLoad: 'progressive',
    prevArrow:
      '<button type="button" title="Prev slide" class="slick-prev"><span class="icon icon--icon-arrow-right icon__rotate-180"><svg class="icon__svg"><use xlink:href="#icon-arrow-right"></use></svg></span></button>',
    nextArrow:
      '<button type="button" title="Next slide" class="slick-next"><span class="icon icon--icon-arrow-right"><svg class="icon__svg"><use xlink:href="#icon-arrow-right"></use></svg></span></button>',
    responsive: [
      {
        breakpoint: 600,
        settings: {
          variableWidth: false,
        },
      },
    ],
  });
