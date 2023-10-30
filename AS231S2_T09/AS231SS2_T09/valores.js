// Selecciona el botón "VER MAS" y el contenido adicional
const verMasButton = document.querySelector('.price__cta.ver-mas');
const hiddenContent = document.querySelector('.price__element .hidden-content');

// Agrega un manejador de eventos al botón
verMasButton.addEventListener('click', function (e) {
    e.preventDefault();

    // Alternar la visibilidad del contenido adicional
    if (hiddenContent.style.display === 'none' || hiddenContent.style.display === '') {
        hiddenContent.style.display = 'block';
        verMasButton.textContent = 'VER MENOS';
    } else {
        hiddenContent.style.display = 'none';
        verMasButton.textContent = 'VER MAS';
    }
});


