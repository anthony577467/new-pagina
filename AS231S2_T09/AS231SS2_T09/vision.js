// Selecciona todos los botones "VER MAS"
const verMasButtons = document.querySelectorAll('.ver-mas');

// Agrega un manejador de eventos a cada botón
verMasButtons.forEach(button => {
    button.addEventListener('click', function (e) {
        e.preventDefault();

        // Encuentra el elemento .hidden-content asociado a este botón
        const hiddenContent = button.nextElementSibling;

        // Alternar la visibilidad del contenido adicional
        if (hiddenContent.style.display === 'none' || hiddenContent.style.display === '') {
            hiddenContent.style.display = 'block';
            button.textContent = 'VER MENOS';
        } else {
            hiddenContent.style.display = 'none';
            button.textContent = 'VER MAS';
        }
    });
});

