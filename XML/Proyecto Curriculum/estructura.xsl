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
<div class="contenedor">
<header>
<h1><xsl:value-of select="curriculum/DatosPersonales/nombre"/> <xsl:value-of select="curriculum/DatosPersonales/apellidos"/></h1>
<p><xsl:copy-of select="curriculum/DatosContacto"/></p>
</header>
<div class="seccion">
<h2>Perfil</h2>
<p>Fecha de Nacimiento: <xsl:value-of select="curriculum/DatosPersonales/fechaNacimiento"/></p>
<p>Lugar de Nacimiento: <xsl:value-of select="curriculum/DatosPersonales/lugarNacimiento"/></p>
<p>Nacionalidad: <xsl:value-of select="curriculum/DatosPersonales/nacionalidades"/></p>
</div>
<div class="flex-container">
<div class="flex-item">
<div class="seccion">
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
<div class="seccion">
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
<div class="seccion">
<h2>Habilidades</h2>
<ul>
<xsl:for-each select="curriculum/CompetenciasSocioProfesionales/competencia">
<li><xsl:value-of select="nombreCompetencia"/> - Nivel: <xsl:value-of select="nivelCompetencia"/></li>
</xsl:for-each>
</ul>
</div>
<div class="seccion">
<h2>Certificaciones</h2>
<ul>
<li>Permiso de Conducir: <xsl:value-of select="curriculum/Adicionales/permisoConducir"/></li>
<li>Vehículo Propio: <xsl:value-of select="curriculum/Adicionales/VehículoPropio"/></li>
<li>Disponibilidad: <xsl:value-of select="curriculum/Adicionales/Disponibilidad"/></li>
</ul>
</div>
<div class="seccion">
<h2>Idiomas</h2>
<ul>
<xsl:for-each select="curriculum/Idiomas/Lengua">
<li><xsl:value-of select="nombre"/> - Nivel Oral: <xsl:value-of select="nivelExpresionOral"/>, Nivel Comprensión Oral: <xsl:value-of select="nivelComprensionOral"/>, Nivel Comprensión Escrita: <xsl:value-of select="nivelComprensionEscrita"/>, Nivel Expresión Escrita: <xsl:value-of select="nivelExpresionEscrita"/> - Título Acreditativo: <xsl:value-of select="nivelTitulo"/></li>
</xsl:for-each>
</ul>
</div>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>