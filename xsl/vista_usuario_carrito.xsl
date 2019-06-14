<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<h2>Carrito usuario</h2>
			<table>
				<tr>
					<th>ID</th>
					<th>Nombre</th>
          <th>Numero de Unidades</th>
				</tr>

				<xsl:for-each select="/vista_usuario_carrito/carrito">
					<tr>
						<td><xsl:value-of select="ID" /></td>
						<td><xsl:value-of select="Nombre" /></td>
            <td><xsl:value-of select="NumeroUnidades" /></td>
					</tr>
				</xsl:for-each>
			</table>
		</html>
	</xsl:template>
</xsl:stylesheet>
