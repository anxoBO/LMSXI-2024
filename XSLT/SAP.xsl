<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="text" indent="yes"/>

    <xsl:template match="/">
    
        <xsl:apply-templates select="/root/record"/>
    
    </xsl:template>

    <xsl:template match="record">
    -------
        ID:<xsl:value-of select="id"/>
        title:<xsl:value-of select="title"/>
        DATE:<xsl:value-of select="date/@when"/>
    </xsl:template>

</xsl:stylesheet>