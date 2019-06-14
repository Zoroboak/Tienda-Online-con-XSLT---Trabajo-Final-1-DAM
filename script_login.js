// <!-- Realizado por los alumnos de 1 DAM IES Venancio Blanco:

// 		Valdearcos Trenas, Andrés
// 		Pérez Sánchez, Pedro Daniel
// 		Prieto Parrilla, Elías
// 		García Bermejo, David
// 		 -->



//Javascript pagina de login

//Cuando todo haya cargado, iniciar el javascript
window.addEventListener("load", function(event) {
    console.log("¡Todos los recursos terminaron de cargar!");

    alert("Para probar la aplicación, use la siguiente información: "+
    	'Usuario:Contraseña:Rol; Gerente, Gerente123, Administrador; Pedro, Pedro123, Administrador; Cliente, Cliente123, Usuario; Elias, Elias123, Usuario	');

    //Ejecuto ahora las acciones necesarias
    cargar(event);
    
  });

function cargar(event){

	var formulario = document.getElementById('formulario');
	

    formulario.addEventListener('submit', function(e){
	    e.preventDefault();

	    var datos = new FormData(formulario);

	    //Se ha pinchado en el boton de login
	    // console.log(datos);
	    // console.log('User: '+datos.get('user'));
	    // console.log('Pass: '+datos.get('pass'));

	    //Compruebo si los campos están vacios
	    if (datos.get('user')!=""||datos.get('pass')!="") {
	    	comprobarUsuario(datos.get('user'),datos.get('pass'));
	    }else {
	    	alert('No puede haber ningún campo en blanco');
	    }
	    

	   
	});

}

function comprobarUsuario (user,pass) {

	var usuarioAdministrador = ['Gerente','Pedro'];
	var usuarioAdministradorPass = ['Gerente123','Pedro123'];
	var usuarioCliente = ['Cliente','Elias'];
	var usuarioClientePass = ['Cliente123','Elias123'];
	var flagUser = false;
	var flagPass = false;



	//Compruebo si es un administrador
	for (var i = usuarioAdministrador.length - 1; i >= 0; i--) {
		if (usuarioAdministrador[i]==user) {
			flagUser = true; //Usuario Encontrado

			//Compruebo si la contraseña coincide
			if (usuarioAdministradorPass[i]==pass) {
				flagPass = true; //Contraseña Encontrada
				alert('Bienvenido Administrador '+user);
				window.location="admin.xml";
			}
			//Evito ciclos innecesarios del for 
			i=0;
		}
	}

	for (var i = usuarioCliente.length - 1; i >= 0; i--) {
		if (usuarioCliente[i]==user) {
			flagUser = true; //Usuario Encontrado

			//Compruebo si la contraseña coincide
			if (usuarioClientePass[i]==pass) {
				flagPass = true; //Contraseña Encontrada
				alert('Bienvenido Usuario '+user);
				window.location="tienda.xml";
			}
			//Evito ciclos innecesarios del for 
			i=0;
		}
	}

	if (flagUser!=true||flagPass!=true) {
		if (flagUser!=true) {
			alert('El usuario no se ha encontrado');
		}else if (flagPass!=true) {
			alert('La contraseña es incorrecta');
		}else {
			alert('No se ha podido iniciar sesión');
		}
	}



    console.log('User: '+user);
    console.log('Pass: '+pass);
}

function register(){
	 alert("Actualmente se encuentra cerrado el registro de esta pagina");
}


