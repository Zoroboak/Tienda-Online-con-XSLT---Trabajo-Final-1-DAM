<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<h2>Lista de clientes</h2>
			<table>
				<tr>
					<th>ID</th>
					<th>DNI</th>
					<th>usuario</th>
					<th>nombre y apellidos</th>
					<th>direccion</th>
					<th>contraseña</th>
					<th>admin</th>
				</tr>
				
				<xsl:for-each select="/clientes/cliente">
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
		</html>
	</xsl:template>
</xsl:stylesheet>