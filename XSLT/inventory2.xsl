<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <inventory>
            <identification>
                <xsl:value-of select="inventory/product[last()]/name"/>
            </identification>
        </inventory>
    </xsl:template>
</xsl:stylesheet>