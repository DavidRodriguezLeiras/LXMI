<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="library">
<html> 
    <body>
        <h1>Library Catalog</h1>
        <table border="2px">
            <tr>
                <th>Title</th>
                <th>Author</th>
                <th>Genre</th>
                <th>Price</th>
                <th>Availability</th>
                <th>Reviews</th>
            </tr>
            <xsl:for-each select="book">
                <tr>
                    <td><xsl:value-of select="title"/></td>
                    <td><xsl:value-of select="author"/></td>
                    <td><xsl:value-of select="genre"/></td>
                    <td>$<xsl:value-of select="price"/></td>
                        <xsl:choose>
                        <xsl:when test="available='true'">
                                <td style="color:#30ff06">Available</td>
                        </xsl:when>
                        <xsl:otherwise>
                                <td style="color:#ff0606">Out of Stock</td>
                        </xsl:otherwise>
                        </xsl:choose>
                    <td>
                    <ul>
                        <xsl:for-each select="reviews/review">
                        <li><xsl:value-of select="user"/>: <xsl:value-of select="comment"/></li>
                        </xsl:for-each>
                    </ul>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>