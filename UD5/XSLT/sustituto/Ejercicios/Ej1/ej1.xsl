<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/elementos">
        <html>
            <body>
                <h1>Elementos</h1>
                    <xsl:for-each select="elem1">
                        <ul>
                            <li>Elementos: <xsl:value-of select="."/>
                            </li>
                        </ul>
                    </xsl:for-each>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>