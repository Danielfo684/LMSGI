<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 <xsl:template match="/">
<html>
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Currículum Vitae</title>
<link rel="stylesheet" href="hojaEstilo.css"/>
</head>
<body>
<div class="formatoPagina">
<header>
<h1><xsl:value-of select="curriculum/DatosPersonales/nombre"/> <xsl:value-of select="curriculum/DatosPersonales/apellidos"/></h1>
<p><xsl:copy-of select="curriculum/DatosContacto"/></p>
</header>
<div class="seccionPerfil">
<h2>Sobre mí</h2>
<p>Filósofo y programador especializado en la implementación de IAs con perspectiva de 
    género. En el entorno laboral puedo aportar mi actitud proactiva y mis conocimientos
     como Full-Stack Developer.</p>
</div>
<div class="flex-container">
<div class="flex-item">
<div class="seccionImportante">
<h2>Experiencia Profesional</h2>
<xsl:for-each select="curriculum/ExperienciaLaboral/Trabajo">
<div class="subseccion">
<h3><xsl:value-of select="puesto"/></h3>
<p><xsl:value-of select="lugarTrabajo"/> | <xsl:value-of select="fechaInicial"/> - <xsl:value-of select="fechaFinal"/></p>
</div>
</xsl:for-each>
</div>
</div>
<div class="flex-item">
<div class="seccionImportante">
<h2>Educación</h2>
<xsl:for-each select="curriculum/FormacionAcademica/Estudio">
<div class="subseccion">
<h3><xsl:value-of select="nombre"/></h3>
<p><xsl:value-of select="lugarRealizacion"/> | <xsl:value-of select="fechaInicio"/> - <xsl:value-of select="fechaFinal"/></p>
</div>
</xsl:for-each>
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
<li>Permiso de Conducir: <xsl:value-of select="curriculum/Adicionales/permisoConducir"/></li>
</xsl:for-each>
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