<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" />
  <xsl:template match="/">
    <html>
      <ul>
        <xsl:for-each select="ies/ciclos/ciclo">
          <li>
            <xsl:apply-templates select="nombre/text()" />
          </li>
        </xsl:for-each>
      </ul>
    </html>
  </xsl:template>
  <xsl:template match="nombre">
    <xsl:value-of select="." />
  </xsl:template>
</xsl:stylesheet>