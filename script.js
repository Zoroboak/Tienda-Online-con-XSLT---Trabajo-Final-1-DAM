// <!-- Realizado por los alumnos de 1 DAM IES Venancio Blanco:

// 		Valdearcos Trenas, Andrés
// 		Pérez Sánchez, Pedro Daniel
// 		Prieto Parrilla, Elías
// 		García Bermejo, David
// 		 -->


function SumarCarrito (argument) {
	// body... 
	var valorCampo =document.getElementById("cont_cart").innerHTML;
	var NumericContCart = parseInt(valorCampo);

	NumericContCart++;

	document.getElementById("cont_cart").innerHTML = NumericContCart;

}


function mostrarLista_clientes (event) {
	document.getElementById('lista_clientes').removeAttribute('style');
}

function mostrarLista_categorias (event) {
	document.getElementById('lista_categorias').removeAttribute('style');
}

function mostrarLista_productos (event) {
	document.getElementById('lista_productos').removeAttribute('style');
}

function mostrarLista_pedidos_productos (event) {
	document.getElementById('lista_pedidos_productos').removeAttribute('style');
}

function mostrarLista_todos_pedidos (event) {
	document.getElementById('lista_todos_pedidos').removeAttribute('style');
}





function cerrarLista_clientes (event) {
	document.getElementById('lista_clientes').setAttribute('style', 'display:none');
}

function cerrarLista_categorias (event) {
	document.getElementById('lista_categorias').setAttribute('style', 'display:none');
}

function cerrarLista_productos (event) {
	document.getElementById('lista_productos').setAttribute('style', 'display:none');
}

function cerrarLista_pedidos_productos (event) {
	document.getElementById('lista_pedidos_productos').setAttribute('style', 'display:none');
}

function cerrarLista_todos_pedidos (event) {
	document.getElementById('lista_todos_pedidos').setAttribute('style', 'display:none');
}

