function validateLogin() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    var alertMessage = document.getElementById("alert-message");

    if (username === "legna" && password === "contraseña") {
        alertMessage.innerHTML = "Usuario y contraseña correctos. Bienvenido nuevamente. Redirigiendo...";
        alertMessage.className = "success";

        // Esperar 2 segundos antes de redirigir
        setTimeout(function() {
            window.location.href = "gestion_cliente.html";
        }, 2000);
    } else if (username !== "legna") {
        alertMessage.innerHTML = "El usuario introducido no se encuentra registrado.";
        alertMessage.className = "error";
    } else {
        alertMessage.innerHTML = "El usuario está creado, pero la contraseña es incorrecta.";
        alertMessage.className = "error";
    }
    alertMessage.classList.remove("hidden");
}
