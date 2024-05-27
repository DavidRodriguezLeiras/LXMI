<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="inventario">
<html> 
    <body>
        <h1>Inventario de productos</h1>
        <xsl:for-each select="item">
            <xsl:sort select="name"/>
            <h3><xsl:value-of select="name"/></h3>
            <img src="imagenes/{@id}.png" alt="No hay NA"/>
            <p><xsl:value-of select="brand"/> - <xsl:value-of select="category"/></p>
            <p>Precio: $<xsl:value-of select="price"/></p>
            <xsl:choose>
                <xsl:when test="available='true'">
                    <p style="color:#30ff06">Disponible</p>
                </xsl:when>
                <xsl:otherwise>
                    <p style="color:#ff0606">Agotado</p>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
        <p>_________________________________________________________</p>
        <h1>Tabla de productos</h1>
        <table border="2px">
            <tr>
                <th>Nombre</th>
                <th>Marca</th>
                <th>Categoria</th>
                <th>Precio</th>
                <th>Disponibilidad</th>
            </tr>
            <xsl:for-each select="item">
                <tr>
                    <td><xsl:value-of select="name"/></td>
                    <td><xsl:value-of select="brand"/></td>
                    <td><xsl:value-of select="category"/></td>
                    <td>$<xsl:value-of select="price"/></td>
                    <xsl:choose>
                        <xsl:when test="available='true'">
                            <td style="color:#30ff06">Disponible</td>
                        </xsl:when>
                        <xsl:otherwise>
                            <td style="color:#ff0606">Agotado</td>
                        </xsl:otherwise>
                    </xsl:choose>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>