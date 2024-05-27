<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/productos">
    <html>
      <body>
       <h2>Lista de productos disponibles</h2>
       <xsl:for-each select="producto">
        <xsl:sort select="precio" data-type="number" order="ascending"/>
        <h3><xsl:value-of select="nombre"/></h3>
        <p><xsl:value-of select="descripcion"/></p>
        <p>Precio: <xsl:value-of select="precio"/>€</p>
        <br/>
        <xsl:choose>
            <xsl:when test="disponible='true'">
                <p style="color:green">Disponible</p>
            </xsl:when>
            <xsl:when test="disponible='false'">
                <p style="color:red">No Disponible</p>
            </xsl:when>
        </xsl:choose>
        <br/>
        <h3>Caracteristicas:</h3>
        <ul>
            <xsl:for-each select="caracteristicas/*">
                <li><xsl:value-of select="."/></li>
            </xsl:for-each>
        </ul>
        <h3>Comentarios:</h3>
            <ol>
                <xsl:for-each select="comentarios/comentario">
                <li><xsl:value-of select="usuario"/>: <xsl:value-of select="texto"/></li>
                </xsl:for-each>
            </ol>
        
       </xsl:for-each>
      </body>
    </html>
  </xsl:template>
  </xsl:stylesheet>