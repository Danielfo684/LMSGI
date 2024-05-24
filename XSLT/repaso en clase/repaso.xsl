<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<xsl:element name="biblioteca">
<xsl:for-each select="bib/libro"><xsl:element name="libro" >
<xsl:attribute name="editorial"><xsl:value-of select="editorial"></xsl:value-of></xsl:attribute>
<xsl:element name="titulo"><xsl:value-of select="titulo"></xsl:value-of></xsl:element>

</xsl:element>
</xsl:for-each>





</xsl:element>
</xsl:template>
</xsl:stylesheet>

