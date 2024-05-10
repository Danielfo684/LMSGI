<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
          <head>
          </head>    
          <body>
            <xsl:apply-templates/>
          </body>
    </html>  
     </xsl:template>
     
    <xsl:template match="biblioteca">
      <h1>Mis libros</h1>
      <table border="1px solid black">
      <tr>
      <td>Autor</td>
      <td>Editorial</td>
      <td>Paginas</td>
      <td>Precio</td>
      <td>Prestado</td>
      </tr>
<xsl:apply-templates>
<xsl:sort select="paginas" order="ascending"/>
</xsl:apply-templates>
        </table>
  </xsl:template>

<xsl:template match="libro">
<xsl:choose>
<xsl:when test ="@prestado = 'NO'">
<tr>
    <td><xsl:value-of select="autor"></xsl:value-of></td>
   <td> <xsl:value-of select="editorial"></xsl:value-of></td>
    <td><xsl:value-of select="paginas"></xsl:value-of></td>
    <td><xsl:value-of select="precio"></xsl:value-of></td>
        <td><strong style="color:red">
        <xsl:value-of select="@prestado"></xsl:value-of></strong></td>
</tr>
</xsl:when>
<xsl:when test ="@prestado = 'SI'">
<tr>
    <td><xsl:value-of select="autor"></xsl:value-of></td>
   <td> <xsl:value-of select="editorial"></xsl:value-of></td>
    <td><xsl:value-of select="paginas"></xsl:value-of></td>
    <td><xsl:value-of select="precio"></xsl:value-of></td>
        <td><strong style="color:green"><xsl:value-of select="@prestado"></xsl:value-of></strong></td>
</tr>
</xsl:when>
</xsl:choose>
</xsl:template>  
  
</xsl:stylesheet>
