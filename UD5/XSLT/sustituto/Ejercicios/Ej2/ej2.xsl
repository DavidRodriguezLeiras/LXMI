<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/clientes">
<html>
    <body>
        <h1>Clientes</h1>
        <table border="2">
            <tr bgcolor="02FAF6">
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Direccion</th>
                <th>Sexo</th>
            </tr>
            <tr>
            <xsl:for-each select="persona">
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="apellidos"/></td>
                    <td><xsl:value-of select="direccion"/></td>
                    <td><xsl:value-of select="sexo/@tipo"/></td>
                </tr>
            </xsl:for-each>
            </tr>
        </table>
    </body>
</html>


</xsl:template>
</xsl:stylesheet>