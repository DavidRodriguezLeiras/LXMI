<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="library">
        <html>
            <body>
                <xsl:for-each select="book">
                <xsl:variable name="var1" select="title"/>
                <xsl:if test="'Th'=substring($var1,1,2)">
                    <p><xsl:value-of select="title"/></p>
                </xsl:if>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
