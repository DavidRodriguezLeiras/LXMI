<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/ejercicios">
<html>
    <body>   
        <xsl:variable name="var1" select="ejercicio3/a"/>
        <xsl:variable name="var2" select="ejercicio3/b"/>
        <xsl:variable name="var3" select="ejercicio3/c"/>
        <p>La formula es a*x+b=c, por lo tanto...</p>
        <p> La solucion es <xsl:value-of select="($var3 - $var2) div $var1"/></p>
    </body> 
</html>
</xsl:template>
</xsl:stylesheet>