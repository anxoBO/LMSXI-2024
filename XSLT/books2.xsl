<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>
  <xsl:strip-space elements="*"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Books Table</title>
        <style>
          table {
            border-collapse: collapse;
            width: 60%;
          }
          th, td {
            border: 1px solid #000;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: dodgerblue;
            color: white;
          }
          .barato {
            background-color: aquamarine;+
          }
          .medio {
            background-color: gold;
          }
          .caro {
            background-color: crimson;
            color: white;
          }
        </style>
      </head>
      <body>
        <table>
          <caption>
            <xsl:text>Number of books: </xsl:text>
            <xsl:value-of select="count(books/book)"/>
          </caption>
          <tr>
            <th>Author</th>
            <th>Title</th>
          </tr>
          <xsl:apply-templates select="books/book"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="book">
    <xsl:variable name="price" select="number(price)"/>
    <tr>
      <xsl:attribute name="class">
        <xsl:choose>
          <xsl:when test="$price &lt;= 10">barato</xsl:when>
          <xsl:when test="$price &lt;= 15">medio</xsl:when>
          <xsl:otherwise>caro</xsl:otherwise>
        </xsl:choose>
      </xsl:attribute>
      <td><xsl:value-of select="author"/></td>
      <td><xsl:value-of select="title"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
