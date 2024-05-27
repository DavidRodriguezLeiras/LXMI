<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/ejercicios">
<html>
    <body>   
        <xsl:variable name="var1" select="ejercicio2/num1"/>
        <xsl:variable name="var2" select="ejercicio2/num2"/>
        <p>El valor absoluto es <xsl:value-of select='format-number($var1 - $var2,"0;0")'/></p>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>