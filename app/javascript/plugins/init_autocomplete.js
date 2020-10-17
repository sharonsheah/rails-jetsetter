import places from 'places.js';

const initAutocomplete = () => {
  const departure = document.getElementById('departure');
  const arrival = document.getElementById('arrival');

  if (departure) {
    places({ container: departure });
  }

  if (arrival) {
    places({ container: arrival });
  }
};

export { initAutocomplete };