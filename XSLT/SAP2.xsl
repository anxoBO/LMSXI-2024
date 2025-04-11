<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>HTML muy largo</title>
            </head>
            <body>
                <header>
                    <h1>
                        <xsl:value-of select="root/count(record[date/year='1790'])"/> record(s) found from 1790 published in Glasgow
                    </h1>
                </header>
                <main>
                    <xsl:apply-templates select="root/record"/>
                </main>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="record">
        <section>
            <article>
                <p>ID: [<xsl:value-of select="id"/>]</p>
                <p>City: <xsl:value-of select="city"/></p>
                <p><xsl:value-of select="text/p[position()=1]"/></p>
            </article>
        </section>
    </xsl:template>        

</xsl:stylesheet>