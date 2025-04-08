<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Mina Botieso SL</title>
            </head>
            <body>
                <ul>
                    <xsl:apply-templates select="inventory/product"/>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="product">
        <li>
            <p>Codigo: <xsl:value-of select="@code"/></p>
            <ul>
                <li><xsl:value-of select="name"/></li>
                <li><xsl:value-of select="weight"/> <xsl:value-of select="weight/@unit"/></li>
            </ul>
        </li>
    </xsl:template>

</xsl:stylesheet>