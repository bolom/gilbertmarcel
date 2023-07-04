const masks = document.querySelectorAll('.stroke-animation path');
masks.forEach((mask, index, el) => {
  const length = mask.getTotalLength();
  mask.style.strokeDasharray = length;
  mask.style.strokeDashoffset = length;
});

let observer = new IntersectionObserver(function (entries, obs) {
  entries.forEach(function (entry) {
    if (!entry.isIntersecting) {
      return;
    }
    entry.target.classList.add('is-show');
    obs.unobserve(entry.target);
  });
});
let strokeAnimation = document.querySelectorAll('.stroke-animation');
strokeAnimation.forEach(function (strokeAnimationItem) {
  observer.observe(strokeAnimationItem);
});
