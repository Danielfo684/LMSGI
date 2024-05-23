<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<body>
<div style="background-color: red">
<xsl:apply-templates select="curriculum/DatosPersonales">
</xsl:apply-templates>
</div>
</body>
</html>
</xsl:template>




<xsl:template match="DatosPersonales">
<h2><xsl:value-of select="nombre">
</xsl:value-of>  <xsl:value-of select="apellidos"></xsl:value-of>
</h2>
</xsl:template>
</xsl:stylesheet>

