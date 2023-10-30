// Selecciona el botón "VER MAS" dentro del elemento específico
const verMasButton = document.querySelector('.price__element--best .ver-mas');

// Agrega un manejador de eventos al botón
verMasButton.addEventListener('click', function (e) {
    e.preventDefault();

    // Encuentra el elemento .hidden-content asociado a este botón
    const hiddenContent = verMasButton.nextElementSibling;

    // Alternar la visibilidad del contenido adicional
    if (hiddenContent.style.display === 'none' || hiddenContent.style.display === '') {
        hiddenContent.style.display = 'block';
        verMasButton.textContent = 'VER MENOS';
    } else {
        hiddenContent.style.display = 'none';
        verMasButton.textContent = 'VER MAS';
    }
});
