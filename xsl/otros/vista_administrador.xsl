<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<h2>Lista de clientes</h2>

			<table>
			<xsl:variable name="clientesXML" select="document('clientes_admin.xml')"/>
				<tr>
					<th>ID</th>
					<th>DNI</th>
					<th>usuario</th>
					<th>nombre y apellidos</th>
					<th>direccion</th>
					<th>contraseña</th>
					<th>admin</th>
				</tr>
				
				<xsl:for-each select="$clientesXML//clientes/cliente">
					<tr>
						<td><xsl:value-of select="id" /></td>
						<td><xsl:value-of select="dni" /></td>
						<td><xsl:value-of select="usuario" /></td>
						<td><xsl:value-of select="nombreApellidos" /></td>
						<td><xsl:value-of select="direccion" /></td>
						<td><xsl:value-of select="contrasena" /></td>
						<td><xsl:value-of select="admin" /></td>
					</tr>
				</xsl:for-each>

			</table>



			

			<h2>Lista de categorías</h2>

			<table>
				<xsl:variable name="categoriasXML" select="document('categorias_admin.xml')"/>
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
			</table>
			




			<h2>Lista de productos</h2>
			<table>
			<xsl:variable name="productosXML" select="document('productos_admin.xml')"/>
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
			</table>



			


			<h2>Lista de relación pedidos-productos</h2>

			<table>
			<xsl:variable name="pedidos_productosXML" select="document('pedidos_productos_admin.xml')"/>
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
			</table>
			



			
			
			<h2>Lista de todos los pedidos</h2>
			<table>
			<xsl:variable name="pedidosXML" select="document('pedidos_admin.xml')"/>
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
			</table>

			
		</html>
	</xsl:template>

</xsl:stylesheet>