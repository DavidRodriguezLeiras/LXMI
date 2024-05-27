<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/numbers">
    <html>
      <body>
       <xsl:variable name="x" select="n"/>
       <xsl:variable name="y" select="m"/> 
       <p> x=<xsl:value-of select="$x"/> </p>
       <p> y=<xsl:value-of select="$y"/> </p>
       <p> Suma: <xsl:value-of select="$x + $y"/> </p>
       <xsl:variable name="Suma" select="$x +$y"/>
       <p> Suma=<xsl:value-of select="$Suma"/> </p>
       <p> Resta x-y: <xsl:value-of select="$x - $y"/> </p>
       <p> Resta y-x: <xsl:value-of select="$y - $x"/> </p>
       <p> Producto: <xsl:value-of select="$x * $y"/> </p>
       <p> División x/y: <xsl:value-of select="$x div $y"/> </p>
       <p> División y/x: <xsl:value-of select="$y div $x"/> </p>
       <p> Resto y/x: <xsl:value-of select="$y mod $x"/> </p>
       <p> Redondeo y/x: <xsl:value-of select="round($y div $x)"/> </p>
       <p> Truncamiento y/x: <xsl:value-of select="floor($y div $x)"/> </p>
       <p> Truncamiento al alza y/x: <xsl:value-of select="ceiling($y div $x)"/> </p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>





