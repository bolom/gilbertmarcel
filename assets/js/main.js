$(document).ready(function () {
  // obecne
  var bodyWidth = window.innerWidth;

  // události při resize okna
  $(window).on('resize', function () {
    // osetreni, zda se velikost zmenila
    if (bodyWidth !== window.innerWidth) {
      // nastavíme novou šířku
      bodyWidth = window.innerWidth;
      // zresetuj menu
      resetMenu();
    }
    AOS.refresh();
  });

  // mobilní menu
  function switchMenu() {
    // označíme zda je menu zavřeno či nikoliv
    if ($('.nav-switcher').hasClass('is-open')) {
      $('.nav-switcher, .nav').removeClass('is-open');
      $('body').removeClass('is-unscrollable');
    } else {
      $('.nav-switcher, .nav').addClass('is-open');
      $('body').addClass('is-unscrollable');
    }
  }
  // při změně rozlišení resetujeme menu
  function resetMenu() {
    $('.nav-switcher, .nav').removeClass('is-open');
    $('body').removeClass('is-unscrollable');
  }
  // spouštěč
  $('.nav-switcher').on('click', function () {
    switchMenu();
  });

  // události při načtení stránky
  $(window).on('load', function () {
    // AOS fix pro první načítání
    AOS.refresh();
  });

  // události při scroolování
  $(window).on('scroll', function () {
    //...
  });

  // modal okna
  if ($('.modal').length) {
    modal();
  }

  // galerie slider
  if ($('.gallery__slider').length) {
    $('.gallery__slider').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true,
      prevArrow: $('.gallery__nav-prev'),
      nextArrow: $('.gallery__nav-next'),
      dots: false,
      infinite: true,
      fade: false,
      autoplay: true,
      autoplaySpeed: 5000,
      variableWidth: true,
      responsive: [
        {
          breakpoint: 1440,
          settings: {
            variableWidth: false,
            slidesToShow: 2,
          },
        },
      ],
    });
  }

  // journal slider
  if ($('.journal-section__slider').length) {
    $('.journal-section__slider').slick({
      slidesToShow: 2,
      slidesToScroll: 1,
      arrows: false,
      dots: false,
      infinite: true,
      fade: false,
      autoplay: true,
      autoplaySpeed: 5000,
      variableWidth: true,
      variableHeight: true,
      swipeToSlide: true,
      touchThreshold: 1000,
      responsive: [
        {
          breakpoint: 1440,
          settings: {
            slidesToShow: 2,
            variableWidth: false,
            variableHeight: false,
          },
        },
        {
          breakpoint: 576,
          settings: {
            slidesToShow: 1,
          },
        },
      ],
    });
  }

  // homepage gsap animation efrects
  if ($('#homepage').length) {
    gsap.registerPlugin(ScrollTrigger);

    const portfolioText = gsap.utils.toArray(
      '.portfolio-item__text--animation'
    );
    portfolioText.forEach((text, i) => {
      ScrollTrigger.matchMedia({
        // responsive animation
        '(min-width: 576px)': function () {
          gsap.from(text, {
            scrollTrigger: {
              trigger: text,
              toggleActions: 'restart pause reverse pause',
              start: '-200px bottom',
              end: 'bottom center',
              scrub: 1,
              invalidateOnRefresh: true,
              markers: false,
            },
            y: '-200',
            opacity: '0.75',
          });
        },
      });
    });

    const portfolioImage = gsap.utils.toArray('.portfolio-item__image img');
    portfolioImage.forEach((image, i) => {
      gsap.from(image, {
        scrollTrigger: {
          trigger: image,
          toggleActions: 'restart pause reverse pause',
          start: 'top 90%',
          end: 'bottom 40%',
          scrub: true,
          invalidateOnRefresh: true,
          markers: false,
          toggleClass: 'portfolio-item__animation',
        },
        width: '130%',
        height: '130%',
      });
    });

    const galleryImage = gsap.utils.toArray('.gallery__slider-item img');
    galleryImage.forEach((gImage, i) => {
      gsap.from(gImage, {
        scrollTrigger: {
          trigger: gImage,
          toggleActions: 'restart pause reverse pause',
          start: 'top 90%',
          end: 'bottom 40%',
          scrub: true,
          invalidateOnRefresh: true,
          markers: false,
        },
        width: '130%',
        height: '130%',
      });
    });
  }

  // portfolio
  if ($('.portfolio-item').length) {
    $('a.portfolio-item').simpleLightbox({
      showCounter: false,
    });
  }

  // galerie
  if ($('.gallery').length) {
    $('.gallery a').simpleLightbox({
      showCounter: false,
    });
  }
});
