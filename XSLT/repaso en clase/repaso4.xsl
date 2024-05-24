<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
<html>
<head>
<style>
table{ 
border: 1px solid black;
}
th, td{border: 1px solid black;
}
</style>
</head>
<body>
<table>
<tr>
<th>Titulo</th>
<th>Editorial</th>
<th>Año</th>
</tr>
<xsl:for-each select="bib/libro">
<tr>
<td><xsl:apply-templates select="titulo"></xsl:apply-templates></td>
<td>
<xsl:value-of select="editorial"></xsl:value-of>
</td>
<td><xsl:value-of select="@año"></xsl:value-of></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>  
  </xsl:template>
  
  <xsl:template match="titulo">
<xsl:value-of select="."></xsl:value-of>  
  </xsl:template>
</xsl:stylesheet>
