<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/datos">
    <html>
      <body>
        <h2>Lista de sitios Web Relevantes:</h2>
        <ol>
            <xsl:for-each select="elemento">
                <li><a href="{url}"><xsl:value-of select="nombre"/></a> - <xsl:value-of select="descripcion"/> </li>
            </xsl:for-each>
        </ol>
        <h2>Tabla de Sitios Web Relevantes:</h2>
        <table>
            <tr>
                <th>Nombre</th>
                <th>Descripcion</th>
                <th>URL</th>
            </tr>

            <xsl:for-each select="elemento">
                <tr>
                    <td><a href="{url}"><xsl:value-of select="nombre"/></a></td>
                    <td><xsl:value-of select="descripcion"/></td>
                    <td><a href="{url}"><xsl:value-of select="url"/></a></td>
                </tr>
            </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
  </xsl:stylesheet>