<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="nba">
<html> 
    <body>
        <h1>Temporada<xsl:value-of select="temporada"/></h1>
        <xsl:for-each select="equipo">
            <h2>Equipo nº<xsl:value-of select="@id"/>: <xsl:value-of select="nombre"/></h2>
            <ul>
                <li><xsl:value-of select="ubicacion"/></li>
                <li><xsl:value-of select="propietario"/></li>
                <li><xsl:value-of select="entrenador"/></li>
                <li><xsl:value-of select="estadio"/></li>
                <li><a href="{web}">web</a></li>
                <img src="{logo}"/>
            </ul>
        </xsl:for-each>
        
        <xsl:for-each select="plantilla">
        <h2>Plantilla nº <xsl:value-of select="@eq"/></h2>
        <table border="2px">
            <tr style="background-color:#FF4500">
                <th>Jugador Nº</th>
                <th>Nombre</th>
                <th>Puesto</th>
                <th>Altura (cm)</th>
                <th>Peso (kg)</th>
            </tr>
            <xsl:for-each select="jugador">
                <xsl:sort select="puesto"/>
                <tr>
                    <td><xsl:value-of select="@num"/></td>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="puesto"/></td>
                    <td><xsl:value-of select="altura"/></td>
                    <td><xsl:value-of select="peso"/></td>
                </tr>
            </xsl:for-each>
        </table>
        </xsl:for-each>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
<!--David Rodriguez Leiras-->