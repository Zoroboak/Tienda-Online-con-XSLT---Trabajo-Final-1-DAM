<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<head>
			<meta charset="utf-8"/>
			<title>Ejercicios XSL</title>
			<style>
				body{
					width: 60%;
					margin:auto;
					background-color: #E0FFFF;
					margin-top: 3rem;
					margin-bottom: 6rem;
				}
				table {
						   width: 100%;
						   border: 1px solid #000;
						}
					th, td {
					   width: 25%;
					   text-align: left;
					   vertical-align: top;
					   border: 1px solid #000;
					   border-collapse: collapse;
					   padding: 0.3em;
					   caption-side: bottom;
					}
					th {
					   background: #101566;
					   text-align:center;
					   font-size: 1.2rem;
					   color: white;

					}
				input{
					width:6rem;
				}
					
			</style>
			<script src="script.js"></script>
			</head>
			<body>
				<section style="background-color: #333333; height: 2.5rem; position: fixed;top: 0;width:62.5%;">
							<span style="font-size: 2rem;color: #fff;text-transform: uppercase;line-height: 1; margin-left: 2rem; cursor: pointer;" onClick="window.location='admin.xml'">
								SuperCart
							</span><span style="color:white">Admin Panel</span>
							
							<a href="index.html" title="Cerrar Sesión" style="padding: 11px 12px 11px;	color: #fff;background: #333;text-decoration: none;	text-transform: uppercase;text-align:center;display: inline-block;line-height: 1;float: right;">Cerrar Sesión</a>
							
						</section>
				<h2>Lista de clientes</h2>
				<button type="button" style="background-color:#333; border-radius:30px;color:white;font-size:1.01rem;" onclick="mostrarLista_clientes()">MostrarTabla</button>
				<button type="button" style="background-color:#333; border-radius:30px;color:white;font-size:1.01rem;" onclick="cerrarLista_clientes()">Ocultar Tabla</button>

				<table style="display:none;" id="lista_clientes">
				<xsl:variable name="clientesXML" select="document('xsl/clientes_admin.xml')"/>
					<tr>
						<th style="width:2rem;">ID</th>
						<th>DNI</th>
						<th>usuario</th>
						<th>nombre y apellidos</th>
						<th>direccion</th>
						<th>contraseña</th>
						<th>admin</th>
					</tr>
					
					<xsl:for-each select="$clientesXML//clientes/cliente">
						<tr>
							<td style="width:2rem;"><xsl:value-of select="id" /></td>
							<td><xsl:value-of select="dni" /></td>
							<td><xsl:value-of select="usuario" /></td>
							<td><xsl:value-of select="nombreApellidos" /></td>
							<td><xsl:value-of select="direccion" /></td>
							<td><xsl:value-of select="contrasena" /></td>
							<td><xsl:value-of select="admin" /></td>
						</tr>
					</xsl:for-each>
					<tr>
						<td style="width:2rem;"><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
					</tr>
					</table>
					<button type="submit" id="guardarCambios" style="background-color:#333; border-radius:30px;color:white;font-size:1.01rem;">Guardar Cambios</button>



				

				<h2>Lista de categorías</h2>
				<button type="button" style="background-color:#333; border-radius:30px;color:white;font-size:1.01rem;" onclick="mostrarLista_categorias()">MostrarTabla</button>
				<button type="button" style="background-color:#333; border-radius:30px;color:white;font-size:1.01rem;" onclick="cerrarLista_categorias()">Ocultar Tabla</button>

				<table style="display:none;" id="lista_categorias">
					<xsl:variable name="categoriasXML" select="document('xsl/categorias_admin.xml')"/>
					<tr>
						<th>ID</th>
						<th>Nombre</th>
					</tr>
					
					<xsl:for-each select="$categoriasXML//categorias/categoria">
						<tr>
							<td><xsl:value-of select="ID" /></td>
							<td><xsl:value-of select="Nombre" /></td>
						</tr>
					</xsl:for-each>
					<tr>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
					</tr>
					</table>
					<button type="submit" id="guardarCambios" style="background-color:#333; border-radius:30px;color:white;font-size:1.01rem;">Guardar Cambios</button>
				




				<h2>Lista de productos</h2>
				<button type="button" style="background-color:#333; border-radius:30px;color:white;font-size:1.01rem;" onclick="mostrarLista_productos()">MostrarTabla</button>
				<button type="button" style="background-color:#333; border-radius:30px;color:white;font-size:1.01rem;" onclick="cerrarLista_productos()">Ocultar Tabla</button>
				<table style="display:none;" id="lista_productos">
				<xsl:variable name="productosXML" select="document('xsl/productos_admin.xml')"/>
					<tr>
						<td colspan="4"><strong>Carnes</strong></td>
					</tr>
					<tr>
						<th>ID</th>
						<th>Producto</th>
						<th>Precio</th>
					</tr>
					<xsl:for-each select="$productosXML//productos/producto[ID_Categoria=1]">
						<tr>
							<td><xsl:value-of select="ID" /></td>
							<td><xsl:value-of select="Nombre" /></td>
							<td><xsl:value-of select="Precio" /></td>
						</tr>
					</xsl:for-each>
					<tr>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
					</tr>
					<tr>
						<td colspan="4"><strong>Pescados</strong></td>
					</tr>
					<tr>
						<th>ID</th>
						<th>Producto</th>
						<th>Precio</th>
					</tr>
					<xsl:for-each select="$productosXML//productos/producto[ID_Categoria=2]">
						<tr>
							<td><xsl:value-of select="ID" /></td>
							<td><xsl:value-of select="Nombre" /></td>
							<td><xsl:value-of select="Precio" /></td>
						</tr>
					</xsl:for-each>
					<tr>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
					</tr>
					<tr>
						<td colspan="4"><strong>Higiene</strong></td>
					</tr>
					<tr>
						<th>ID</th>
						<th>Producto</th>
						<th>Precio</th>
					</tr>
					<xsl:for-each select="$productosXML//productos/producto[ID_Categoria=3]">
						<tr>
							<td><xsl:value-of select="ID" /></td>
							<td><xsl:value-of select="Nombre" /></td>
							<td><xsl:value-of select="Precio" /></td>
						</tr>
					</xsl:for-each>
					<tr>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
					</tr>
					<tr>
						<td colspan="4"><strong>Mascotas</strong></td>
					</tr>
					<tr>
						<th>ID</th>
						<th>Producto</th>
						<th>Precio</th>
					</tr>
					<xsl:for-each select="$productosXML//productos/producto[ID_Categoria=4]">
						<tr>
							<td><xsl:value-of select="ID" /></td>
							<td><xsl:value-of select="Nombre" /></td>
							<td><xsl:value-of select="Precio" /></td>
						</tr>
					</xsl:for-each>
					<tr>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
					</tr>
					<tr>
						<td colspan="4"><strong>Bebidas</strong></td>
					</tr>
					<tr>
						<th>ID</th>
						<th>Producto</th>
						<th>Precio</th>
					</tr>
					<xsl:for-each select="$productosXML//productos/producto[ID_Categoria=5]">
						<tr>
							<td><xsl:value-of select="ID" /></td>
							<td><xsl:value-of select="Nombre" /></td>
							<td><xsl:value-of select="Precio" /></td>
						</tr>
					</xsl:for-each>
					<tr>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
					</tr>
					<tr>
						<td colspan="4"><strong>Helados</strong></td>
					</tr>
					<tr>
						<th>ID</th>
						<th>Producto</th>
						<th>Precio</th>
					</tr>
					<xsl:for-each select="$productosXML//productos/producto[ID_Categoria=6]">
						<tr>
							<td><xsl:value-of select="ID" /></td>
							<td><xsl:value-of select="Nombre" /></td>
							<td><xsl:value-of select="Precio" /></td>
						</tr>
					</xsl:for-each>
					<tr>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
					</tr>
					<tr>
						<td colspan="4"><strong>Dulces</strong></td>
					</tr>
					<tr>
						<th>ID</th>
						<th>Producto</th>
						<th>Precio</th>
					</tr>
					<xsl:for-each select="$productosXML//productos/producto[ID_Categoria=7]">
						<tr>
							<td><xsl:value-of select="ID" /></td>
							<td><xsl:value-of select="Nombre" /></td>
							<td><xsl:value-of select="Precio" /></td>
						</tr>
					</xsl:for-each>
					<tr>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
					</tr>
					<tr>
						<td colspan="4"><strong>Zona bebé</strong></td>
					</tr>
					<tr>
						<th>ID</th>
						<th>Producto</th>
						<th>Precio</th>
					</tr>
					<xsl:for-each select="$productosXML//productos/producto[ID_Categoria=8]">
						<tr>
							<td><xsl:value-of select="ID" /></td>
							<td><xsl:value-of select="Nombre" /></td>
							<td><xsl:value-of select="Precio" /></td>
						</tr>
					</xsl:for-each>
					<tr>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
					</tr>
					<tr>
						<td colspan="4"><strong>Lácteos y Charcutería</strong></td>
					</tr>
					<tr>
						<th>ID</th>
						<th>Producto</th>
						<th>Precio</th>
					</tr>
					<xsl:for-each select="$productosXML//productos/producto[ID_Categoria=9]">
						<tr>
							<td><xsl:value-of select="ID" /></td>
							<td><xsl:value-of select="Nombre" /></td>
							<td><xsl:value-of select="Precio" /></td>
						</tr>
					</xsl:for-each>
					<tr>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
					</tr>
					<tr>
						<td colspan="4"><strong>Conservas</strong></td>
					</tr>
					<tr>
						<th>ID</th>
						<th>Producto</th>
						<th>Precio</th>
					</tr>
					<xsl:for-each select="$productosXML//productos/producto[ID_Categoria=10]">
						<tr>
							<td><xsl:value-of select="ID" /></td>
							<td><xsl:value-of select="Nombre" /></td>
							<td><xsl:value-of select="Precio" /></td>
						</tr>
					</xsl:for-each>
					<tr>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
						<td><input value="Editar..."/></td>
					</tr>
					</table>
					<button type="submit" id="guardarCambios" style="background-color:#333; border-radius:30px;color:white;font-size:1.01rem;">Guardar Cambios</button>



				


				<h2>Lista de relación pedidos-productos</h2>
				<button type="button" style="background-color:#333; border-radius:30px;color:white;font-size:1.01rem;" onclick="mostrarLista_pedidos_productos()">MostrarTabla</button>
				<button type="button" style="background-color:#333; border-radius:30px;color:white;font-size:1.01rem;" onclick="cerrarLista_pedidos_productos()">Ocultar Tabla</button>

				<table style="display:none;" id="lista_pedidos_productos">
				<xsl:variable name="pedidos_productosXML" select="document('xsl/pedidos_productos_admin.xml')"/>
				<tr>
					<th>id_pedido</th>
					<th>id_producto</th>
					<th>cantidad</th>
				</tr>
				<xsl:for-each select="$pedidos_productosXML//pedidos_productos/pedido_producto">
					<tr>
						<td><xsl:value-of select="id_pedido"/></td>
						<td><xsl:value-of select="id_producto"/></td>
						<td><xsl:value-of select="cantidad"/></td>
					</tr>
				</xsl:for-each>
				<tr>
					<td><input value="Editar..."/></td>
					<td><input value="Editar..."/></td>
					<td><input value="Editar..."/></td>
				</tr>
				</table>
				<button type="submit" id="guardarCambios" style="background-color:#333; border-radius:30px;color:white;font-size:1.01rem;">Guardar Cambios</button>
				



				
				
				<h2>Lista de todos los pedidos</h2>
				<button type="button" style="background-color:#333; border-radius:30px;color:white;font-size:1.01rem;" onclick="mostrarLista_todos_pedidos()">MostrarTabla</button>
				<button type="button" style="background-color:#333; border-radius:30px;color:white;font-size:1.01rem;" onclick="cerrarLista_todos_pedidos()">Ocultar Tabla</button>
				<table style="display:none;" id="lista_todos_pedidos">
				<xsl:variable name="pedidosXML" select="document('xsl/pedidos_admin.xml')"/>
				<tr>
					<th>id</th>
					<th>id_cliente</th>
					<th>fecha</th>
				</tr>
				<xsl:for-each select="$pedidosXML//pedidos/pedido">
					<tr>
						<td><xsl:value-of select="id"/></td>
						<td><xsl:value-of select="id_cliente"/></td>
						<td><xsl:value-of select="fecha"/></td>
					</tr>
				</xsl:for-each>
				<tr>
					<td><input value="Editar..."/></td>
					<td><input value="Editar..."/></td>
					<td><input value="Editar..."/></td>
				</tr>
				</table>
				<button type="submit" id="guardarCambios" style="background-color:#333; border-radius:30px;color:white;font-size:1.01rem;">Guardar Cambios</button>
			
			</body>
			
		</html>
	</xsl:template>

</xsl:stylesheet>