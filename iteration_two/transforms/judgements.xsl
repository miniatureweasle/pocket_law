<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>

<xsl:include href="general_templates.xsl"/>

<xsl:template match="data"> 
	<xsl:apply-templates select="judgement"/>	
</xsl:template>
	
<xsl:template name="head">
	<xsl:param name="title"/>
	<xsl:param name="prefix"/>
	<head> 
		<title><xsl:value-of select="$title"/></title>
		<style type="text/css">@import url(../../../style/pl.css); </style>
	</head>
	<!--
		add search functionality	
	--> 
</xsl:template>

<xsl:template match="judgement">

	<file name="{concat ('###', column[@name='fid'], '.html###')}">
	
		###<html>

			<xsl:call-template name="head">
				<xsl:with-param name="title">
					<xsl:value-of select='column[@name="title"]'/>
				</xsl:with-param>
			</xsl:call-template>

			<xsl:call-template name="menu">
			</xsl:call-template>

			<h1> <xsl:value-of select='column[@name="title"]'/></h1>

			<b> <xsl:value-of select='column[@name="body_value"]'/></b>
		</html>###
	
	</file>

</xsl:template>

</xsl:stylesheet>
