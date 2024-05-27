<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/ejercicios">
<html>
    <body>   
        <xsl:variable name="var1" select="ejercicio1/num1"/>
        <xsl:variable name="var2" select="ejercicio1/num2"/>
        <xsl:choose>
            <xsl:when test="$var1 > $var2">
                <p><xsl:value-of select="$var1"/> es mayor que <xsl:value-of select="$var2"/></p>
            </xsl:when>
            <xsl:when test="$var1&lt;$var2">
                <p><xsl:value-of select="$var2"/> es menor que <xsl:value-of select="$var1"/></p>
            </xsl:when>
            <xsl:otherwise>
                <p>Los numeros son iguales</p>
            </xsl:otherwise>
        </xsl:choose>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>