<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
</head>
<body>
<h2>Listado de autores (Catálogo número <xsl:value-of select="bib/@catalogo"></xsl:value-of></h2>
<ul>
<xsl:for-each select="bib/libro/autores/autor">
<li>
<xsl:value-of select="nombre"></xsl:value-of>
</li>
</xsl:for-each>
</ul>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

