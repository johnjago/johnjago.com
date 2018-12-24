function clickAndUpdate(id, text) {
  const el = document.getElementById(id);
  el.addEventListener('click', e => {
    e.target.textContent = text;
  });
}

clickAndUpdate('email', 'johnjago@' + 'protonmail.com');
