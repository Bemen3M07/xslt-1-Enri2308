<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html> 
<body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr bgcolor="blue">
      <th style="text-align:left">Titulo</th>
      <th style="text-align:left">Artistas&#128293;</th>
      <th style="text-align:left">Precio</th>
    </tr>
    
   <xsl:for-each select="catalog/cd[price &lt; 10]"> 

   <!-- <xsl:for-each select="catalog/cd[artist='Bob Dylan']"> -->
      <!-- <xsl:sort select="artist"/> --> 

    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
      <td><xsl:value-of select="price"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

