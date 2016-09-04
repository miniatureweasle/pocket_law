<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>

<xsl:include href="general_templates.xsl"/>

<xsl:param name="basedir"/>

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

<xsl:template match="letters">
	<file name='###index.html###'>

		###<html>

			<xsl:call-template name="head">
				<xsl:with-param name="title">
					INDEX PAGE
				</xsl:with-param>
			</xsl:call-template>

			<xsl:call-template name="menu">
				<xsl:with-param name="supreme-court-of-appeal"><xsl:value-of select="$basedir"/>courts/supreme-court-of-appeal/html/
				</xsl:with-param>
			</xsl:call-template>

			<body> 
				<p> Decisions beginning with: <br /> </p>
				
				<xsl:for-each select="letter">
					<xsl:variable name="ref" select="."/>
						<ul>
							<li><a href="{concat($ref, '.html')}"> <xsl:value-of select = "."/></a></li>
						</ul>
				</xsl:for-each>
		</body>
		</html>###
	</file>
</xsl:template>

</xsl:stylesheet>
