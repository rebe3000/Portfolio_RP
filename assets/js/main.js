// first import.
import Headroom from 'js/headroom';

document.addEventListener('DOMContentLoaded', function() {
  // grab the header element.
  const Header = document.querySelector("header");
  
  // construct an instance of Headroom, passing the header elemen.
  const headroom = new Headroom(Header, {
    offset: 0,
    tolerance: {
      up: 0,
      down: 0
    },
    classes: {
      initial: "header--fixed",
      top: "top",
      notTop: "not-top"
    }
  });
  
  // initialise
  headroom.init();

  document.querySelectorAll('.email-link').forEach(function (link) {
    link.addEventListener('click', function () {
      const email = link.getAttribute('data-email');
      if (!email || !navigator.clipboard) {
        return;
      }

      navigator.clipboard.writeText(email).then(function () {
        const original = link.getAttribute('title');
        link.setAttribute('title', 'Email copied to clipboard');
        window.setTimeout(function () {
          link.setAttribute('title', original);
        }, 2000);
      });
    });
  });
});
