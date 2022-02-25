

const initParticule = () => {
  particlesJS("particles-js", {
    "particles": {
      "number": {
        "value": 29,
        "density": {
          "enable": true,
          "value_area": 800
        }
      },
      "color": {
        "value": "#ffffff"
      },
      "shape": {
        "type": "edge",
        "stroke": {
          "width": 14,
          "color": "#ffffff"
        },
        "polygon": {
          "nb_sides": 4
        },
        "image": {
          "src": "img/github.svg",
          "width": 100,
          "height": 100
        }
      },
      "opacity": {
        "value": 0.008017060304327615,
        "random": false,
        "anim": {
          "enable": false,
          "speed": 0,
          "opacity_min": 0.1,
          "sync": false
        }
      },
      "size": {
        "value": 0,
        "random": false,
        "anim": {
          "enable": false,
          "speed": 2.436093156202295,
          "size_min": 26.79702471822524,
          "sync": false
        }
      },
      "line_linked": {
        "enable": true,
        "distance": 320.6824121731046,
        "color": "#ff1716",
        "opacity": 0.48102361825965684,
        "width": 1.9240944730386271
      },
      "move": {
        "enable": true,
        "speed": 4,
        "direction": "top-right",
        "random": false,
        "straight": false,
        "out_mode": "out",
        "bounce": false,
        "attract": {
          "enable": false,
          "rotateX": 600,
          "rotateY": 1362.9002517356944
        }
      }
    },
    "interactivity": {
      "detect_on": "canvas",
      "events": {
        "onhover": {
          "enable": true,
          "mode": "repulse"
        },
        "onclick": {
          "enable": true,
          "mode": "push"
        },
        "resize": true
      },
      "modes": {
        "grab": {
          "distance": 400,
          "line_linked": {
            "opacity": 1
          }
        },
        "bubble": {
          "distance": 400,
          "size": 40,
          "duration": 2,
          "opacity": 8,
          "speed": 3
        },
        "repulse": {
          "distance": 200,
          "duration": 0.4
        },
        "push": {
          "particles_nb": 4
        },
        "remove": {
          "particles_nb": 2
        }
      }
    },
    "retina_detect": true
  });
  let count_particles, stats, update;
  stats = new Stats; stats.setMode(0);
  stats.domElement.style.position = 'absolute';
  stats.domElement.style.left = '0px';
  stats.domElement.style.top = '0px';
  document.body.appendChild(stats.domElement);
  count_particles = document.querySelector('.js-count-particles');
  update = function () {
    stats.begin();
    stats.end();
    if (window.pJSDom[0].pJS.particles && window.pJSDom[0].pJS.particles.array) {
      count_particles.innerText = window.pJSDom[0].pJS.particles.array.length;
    }
    requestAnimationFrame(update);
   };
   requestAnimationFrame(update);;
}

export { initParticule }
