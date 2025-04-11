<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/catalog">
        <html>
            <head>
                <title>Books by Authors Born Before 1970</title>
            </head>
            <body>
                <h1>Books by Authors Born Before 1970</h1>
                <ol>
                    <xsl:apply-templates select="book[authors/author/@birthDate &lt; 1970]"/>
                </ol>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="book">
        <li>
            <xsl:value-of select="title"/>
        </li>
    </xsl:template>

</xsl:stylesheet>
