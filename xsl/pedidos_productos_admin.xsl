<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
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
		</html>
	</xsl:template>
</xsl:stylesheet>