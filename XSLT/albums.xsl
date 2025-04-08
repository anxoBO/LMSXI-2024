<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Albums</title>
            </head>
            <body>
                <h1>Albums</h1>
                <section>
                    <xsl:apply-templates select="albums/album"/>
                </section>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="album">
        <article>
            <h2><xsl:value-of select="title"/></h2>
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="url"/>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="title"/>
                </xsl:attribute>
            </img>
        </article>
    </xsl:template>

</xsl:stylesheet>
