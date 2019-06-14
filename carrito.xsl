<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html lang="es">
		<head>
			<meta charset="UTF-8"/>
			<title>Carrito de la compra</title>
			<link rel="stylesheet" href="style.css"/>
			<!-- Realizado por los alumnos de 1 DAM IES Venancio Blanco:

				Valdearcos Trenas, Andrés
				Pérez Sánchez, Pedro Daniel
				Prieto Parrilla, Elías
				García Bermejo, David
				 -->
			<script src="script.js"></script>
			<link type="text/css" href="https://fonts.googleapis.com/css?family=Muli:400,300" rel="stylesheet"/>
			<link type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet"/>
		</head>
		<body class="shop">
			<header style="margin-bottom: 9rem;">
				<section>
					<section style="background-color: #333333; height: 3.5rem;">
						<span style="font-size: 2rem;color: #fff;text-transform: uppercase;line-height: 1; margin-left: 2rem;  cursor: pointer;" onClick="window.location='tienda.xml'">
							SuperCart
						</span>
						<div>
							<form action="carrito.xml" method="post" class="carrito" id="carrito_compra"> 
								<input type="hidden" name="cmd" value="_cart"/>
								<input type="hidden" name="display" value="1"/>
								<button type="submit" name="submit" value="" style="display: none;" >🛒 <span id="cont_cart"></span></button>
							</form>
							<a href="index.html" title="Cerrar Sesión">Cerrar Sesión</a>
						</div>
					</section>
					<section style="height: 5rem;">
						<span>
							📞 Haga su pedido en línea o llámenos: (+34) 987 654 321
						</span>
						<h1>
							<a href="" title="">Carrito</a>
						</h1>
						<form action="#" method="post" id="cuadro_busqueda">
								<input type="search" name="Search" placeholder="Buscar un producto...." required=""/>
								<button type="submit" aria-label="Left Align" style="margin: 0; border-top-right-radius: 0; border-bottom-right-radius: 0;">🔎</button>
						</form>
					</section>
					<section style="background: #fe9126; height: auto;">
						<span  style="float:left; margin-left:25%;color:white;">Total: 25€</span>
						<button type="button" style="float:right;">Comprar Ahora</button>
					</section>
				</section>
			</header>
			<main>
				<h2>Productos en Carrito</h2>
				<section class="contenedor">
					<xsl:for-each select="/vista_usuario_carrito/carrito">
					<div class="producto" id="id_producto">
						<img src="resources/product.png"/>
						<h3><xsl:value-of select="Nombre" /></h3>
						<span><xsl:value-of select="Precio" /></span><br/>
						<span>Unidades: <xsl:value-of select="NumeroUnidades" /></span>
						<br/><br/>
						<button type="button" style="background-color: #333;">Añadir al Carrito</button>
					</div>
					</xsl:for-each>
				</section>
			</main>
			<footer style="background-color: #333333; height: 3.5rem; margin-top: 2rem;">
				<section style="width: 30%; float: left;color: #f1f1f1;padding: 2rem; padding-left: 6rem; padding-right: 6rem;">
					<span style="font-size: 2rem;color: #fff">Contacto</span>
					<p>1234k Avenue, 4th block, New York City.</p>
					<p>info@example.com</p>
					<p>+1234 567 567</p>
				</section>
				<section style="width: 30%; float: right;color: #f1f1f1;padding: 2rem; padding-left: 6rem; padding-right: 6rem;"> 
					<span style="font-size: 2rem;color: #fff">Sobre SuperCart</span>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam minima, corrupti facere placeat eius repudiandae ducimus, optio, minus non distinctio, ex similique ipsam totam quaerat ratione molestias corporis. Saepe, qui.</p>
				</section>
			</footer>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>