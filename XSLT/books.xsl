<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Books over 10 Euros</title>
      </head>
      <body>
        <h2>Books Priced Over 10 Euros</h2>
        <ol>
          <xsl:apply-templates select="books/book[price &gt; 10]"/>
        </ol>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="book">
    <li>
      <xsl:value-of select="title"/> -
      <xsl:value-of select="author"/> -
      <xsl:value-of select="price"/>€
    </li>
  </xsl:template>

</xsl:stylesheet>
