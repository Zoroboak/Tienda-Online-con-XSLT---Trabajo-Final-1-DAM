<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<h2>Lista de productos</h2>

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

		</html>
	</xsl:template>
</xsl:stylesheet>