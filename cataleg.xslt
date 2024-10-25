<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html> 
<body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr bgcolor="blue">
      <th style="text-align:left">Titulo</th>
      <th style="text-align:left">Artistas</th>
      <th style="text-align:left">Precio</th>
      <th style="text-align:left"></th>
    </tr>
    
   <xsl:for-each select="catalog/cd"> 

   <!-- <xsl:for-each select="catalog/cd[artist='Bob Dylan']"> -->
      <!-- <xsl:sort select="artist"/> --> 

    <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="artist"/></td>
        <td><xsl:value-of select="price"/></td>
        <td>
      <xsl:choose>
        <xsl:when test="price &lt; 10">
        <span>&#128994;</span>
        </xsl:when>

        <xsl:otherwise>
        <span>&#128308;</span>
        </xsl:otherwise>
      </xsl:choose>
    </td>

    </tr>
   
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

