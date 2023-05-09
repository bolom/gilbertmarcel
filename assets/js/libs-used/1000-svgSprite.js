let ajax = new XMLHttpRequest();
ajax.open("GET", window.spritePath, true);
ajax.send();
ajax.onload = function (e) {
  let div = document.createElement('div');
  div.innerHTML = ajax.responseText;
  div.style.position = 'absolute';
  div.style.right = '100%';
  div.style.height = '0';
  div.style.overflow = 'hidden';
  document.body.insertBefore(div, document.body.childNodes[0]);
};
