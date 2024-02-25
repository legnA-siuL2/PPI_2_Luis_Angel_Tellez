function agregarUsuario() {
    // Obtener datos del formulario
    var nombre = document.getElementById('nombre').value;
    var edad = document.getElementById('edad').value;
    var correo = document.getElementById('correo').value;
    var genero = document.getElementById('genero').value;
    var contrasena = document.getElementById('contrasena').value;

    // Crear referencia a la tabla y su cuerpo
    var table = document.getElementById('userTable');
    var tbody = table.getElementsByTagName('tbody')[0];

    // Crear una nueva fila
    var newRow = tbody.insertRow();

    // Insertar celdas en la nueva fila
    var cell1 = newRow.insertCell(0);
    var cell2 = newRow.insertCell(1);
    var cell3 = newRow.insertCell(2);
    var cell4 = newRow.insertCell(3);
    var cell5 = newRow.insertCell(4);

    // Agregar datos a las celdas
    cell1.innerHTML = nombre;
    cell2.innerHTML = edad;
    cell3.innerHTML = correo;
    cell4.innerHTML = genero;
    cell5.innerHTML = contrasena;

    // Limpiar el formulario después de agregar el usuario
    document.getElementById('user-form').reset();
}

// Agregar manejo del evento submit al formulario
document.getElementById('user-form').addEventListener('submit', function(event) {
    event.preventDefault(); // Evita que la página se recargue
    agregarUsuario(); // Llama a tu función para agregar el usuario
});
