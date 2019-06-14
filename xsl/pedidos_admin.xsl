<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>

			<h2>Lista de todos los pedidos</h2>
			<table>
			<tr>
				<th>id</th>
				<th>id_cliente</th>
				<th>fecha</th>
			</tr>
			<xsl:for-each select="/pedidos/pedido">
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