<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="exam">
<html> 
    <body>
        <h1><xsl:value-of select="title"/></h1>
        <xsl:for-each select="question">
            <p><xsl:value-of select="number"/>-<xsl:value-of select="text"/></p>
            <xsl:variable name="respuesta" select="correct_answer"/>
            <ul>
            <xsl:for-each select="options/option">
                <xsl:variable name="respuesta2" select="."/> 
                <xsl:variable name="respuesta3" select="substring($respuesta2,1,1)"/>
                <xsl:choose>
                    <xsl:when test="$respuesta=$respuesta3">
                        <li style="color:green"><xsl:value-of select="."/></li>
                    </xsl:when>
                    <xsl:otherwise>
                        <li><xsl:value-of select="."/></li>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </ul>
        </xsl:for-each>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
<!--David Rodriguez Leiras-->