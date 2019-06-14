<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<h2>Lista de categorías</h2>
			<table>
				<tr>
					<th>ID</th>
					<th>Nombre</th>
				</tr>
				
				<xsl:for-each select="/categorias/categoria">
					<tr>
						<td><xsl:value-of select="ID" /></td>
						<td><xsl:value-of select="Nombre" /></td>
					</tr>
				</xsl:for-each>
			</table>
		</html>
	</xsl:template>
</xsl:stylesheet>