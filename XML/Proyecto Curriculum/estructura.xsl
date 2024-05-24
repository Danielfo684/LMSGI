<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 <xsl:template match="/">
<html>
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Trabajo currículum</title>
<link rel="stylesheet" href="hojaEstilo.css"/>
</head>
<body>
<div class="formatoPagina">
<header>
<h1><xsl:value-of select="curriculum/DatosPersonales/nombre"/> <xsl:value-of select="curriculum/DatosPersonales/apellidos"/></h1>
<p><xsl:copy-of select="curriculum/DatosContacto"/></p>
</header>
<div class="flex-container">
    <div class="flex-item">
<div class="seccionPerfil">
<h2>Sobre mí</h2>
<p>Filósofo y programador especializado en la implementación de IAs con perspectiva de 
    género. En el entorno laboral puedo aportar mi actitud proactiva y mis conocimientos
     como Full-Stack Developer.</p>
</div>
</div>
</div>
<div class="flex-container">
<div class="flex-item">
<div class="seccionImportante">
<h2>Experiencia Profesional</h2>
<ul>
<xsl:for-each select="curriculum/ExperienciaLaboral/Trabajo">
<div class="subseccion">

<li><h3><xsl:value-of select="puesto"/></h3></li>
<p><xsl:value-of select="lugarTrabajo"/> <br/> <xsl:value-of select="fechaInicial"/> <br/> <xsl:value-of select="fechaFinal"/></p>

</div>
</xsl:for-each>
</ul>
</div>
</div>
<div class="flex-item">
<div class="seccionImportante">
<h2>Educación</h2>
<ul>
<xsl:for-each select="curriculum/FormacionAcademica/Estudio">
<div class="subseccion">
<li><h3><xsl:value-of select="nombre"/></h3></li>
<p><xsl:value-of select="lugarRealizacion"/> <br/> <xsl:value-of select="fechaInicio"/> <br/><xsl:value-of select="fechaFinal"/></p>
</div>
</xsl:for-each>
</ul>
</div>
</div>
</div>
<div class="flex-container">
<div class="flex-item">
<div class="seccion">
<h2>Habilidades</h2>
<ul>
<xsl:for-each select="curriculum/CompetenciasSocioProfesionales/competencia">
<li><xsl:value-of select="nombreCompetencia"/> - Nivel: <xsl:value-of select="nivelCompetencia"/></li>
</xsl:for-each>
<li>Permiso de Conducir: <xsl:value-of select="curriculum/Adicionales/permisoConducir"/></li>
</ul>
</div>
</div>
<div class="flex-item">
<div class="seccion">
<h2>Idiomas</h2>
<ul>
<xsl:for-each select="curriculum/Idiomas/Lengua">
<li><xsl:value-of select="nombre"/>Título Acreditativo: <xsl:value-of select="nivelTitulo"/></li>
</xsl:for-each>
</ul>
</div>
</div>
</div>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>