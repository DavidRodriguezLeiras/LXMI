<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="clima">
<html> 
    <body>
        <h1>El tiempo para galicia - 26/04/2021</h1>
        <table border="2px">
            <tr>
                <th>Localidad</th>
                <th>Prevision</th>
                <th>T.MIN</th>
                <th>T.MAX</th>
                <th>Precipitacion</th>
            </tr>
        <xsl:for-each select="prediccion">
            <xsl:variable name="date" select="substring(@fecha,1,2)"/>
            <xsl:if test="$date=26">
                    <tr>
                        <td><xsl:value-of select="@loc"/></td>
                        <td><img src="imagenes/{@cl}.png" alt="imagen no encontrada"/></td>
                        <td><xsl:value-of select="min"/></td>
                        <td><xsl:value-of select="max"/></td>
                        <td><xsl:value-of select="lluvia"/></td>
                    </tr>
            </xsl:if>
        </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
<!--David Rodriguez Leiras-->
