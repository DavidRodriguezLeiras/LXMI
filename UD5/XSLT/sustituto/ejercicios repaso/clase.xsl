<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="library">
<html> 
    <body>
        <h1>Library Catalog</h1>
        <xsl:for-each select="book">
            <xsl:sort select="title"/>
            <h2><xsl:value-of select="title"/></h2>
            <p><xsl:value-of select="author"/> - <xsl:value-of select="genre"/></p>
            <p>Price: $<xsl:value-of select="price"/></p>
            <xsl:choose>
                <xsl:when test="available='true'">
                    <p style="color:#30ff06">Available</p>
                </xsl:when>
                <xsl:otherwise>
                    <p style="color:#ff0606">Out of Stock</p>
                </xsl:otherwise>
            </xsl:choose>
            <h3>Reviews:</h3>
            <ul>
                <xsl:for-each select="reviews/review">
                <li><xsl:value-of select="user"/>: <xsl:value-of select="comment"/></li>
                </xsl:for-each>
            </ul>
        </xsl:for-each>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>