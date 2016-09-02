<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>

<xsl:template match="index">
	<xsl:apply-templates select="A"/>
	<xsl:apply-templates select="B"/>
	<xsl:apply-templates select="C"/>
	<xsl:apply-templates select="D"/>
	<xsl:apply-templates select="E"/>
	<xsl:apply-templates select="F"/>
	<xsl:apply-templates select="G"/>
	<xsl:apply-templates select="H"/>
	<xsl:apply-templates select="I"/>
	<xsl:apply-templates select="J"/>
	<xsl:apply-templates select="K"/>
	<xsl:apply-templates select="L"/>
	<xsl:apply-templates select="M"/>
	<xsl:apply-templates select="N"/>
	<xsl:apply-templates select="O"/>
	<xsl:apply-templates select="P"/>
	<xsl:apply-templates select="R"/>
	<xsl:apply-templates select="S"/>
	<xsl:apply-templates select="T"/>
	<xsl:apply-templates select="U"/>
	<xsl:apply-templates select="V"/>
	<xsl:apply-templates select="W"/>
	<xsl:apply-templates select="X"/>
	<xsl:apply-templates select="Y"/>
	<xsl:apply-templates select="Z"/>
</xsl:template>


<xsl:template name="head">
	<xsl:param name="title"/>
	<xsl:param name="prefix"/>
	<head> 
		<title><xsl:value-of select="$title"/></title>
		<style type="text/css">@import url(../style/pl.css); </style>
	</head>
	<!--
		add search functionality	
	--> 
</xsl:template>

<xsl:template match="A">
	<file name="###A.html###">
		###<html>

		<h1> ALPHABET LISTING A </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="B">
	<file name="###B.html###">
		###<html>

		<h1> ALPHABET LISTING B </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="C">
	<file name="###C.html###">
		###<html>

		<h1> ALPHABET LISTING C </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="D">
	<file name="###D.html###">
		###<html>

		<h1> ALPHABET LISTING D </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="E">
	<file name="###E.html###">
		###<html>

		<h1> ALPHABET LISTING E </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="F">
	<file name="###F.html###">
		###<html>

		<h1> ALPHABET LISTING F </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="G">
	<file name="###G.html###">
		###<html>

		<h1> ALPHABET LISTING G </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="H">
	<file name="###H.html###">
		###<html>

		<h1> ALPHABET LISTING H </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="I">
	<file name="###I.html###">
		###<html>

		<h1> ALPHABET LISTING I </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="J">
	<file name="###J.html###">
		###<html>

		<h1> ALPHABET LISTING J </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="K">
	<file name="###K.html###">
		###<html>

		<h1> ALPHABET LISTING K </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="L">
	<file name="###L.html###">
		###<html>

		<h1> ALPHABET LISTING L </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="M">
	<file name="###M.html###">
		###<html>

		<h1> ALPHABET LISTING M </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="N">
	<file name="###N.html###">
		###<html>

		<h1> ALPHABET LISTING N </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="O">
	<file name="###O.html###">
		###<html>

		<h1> ALPHABET LISTING O </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="P">
	<file name="###P.html###">
		###<html>

		<h1> ALPHABET LISTING P </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="Q">
	<file name="###Q.html###">
		###<html>

		<h1> ALPHABET LISTING Q </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="R">
	<file name="###R.html###">
		###<html>

		<h1> ALPHABET LISTING R </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="S">
	<file name="###S.html###">
		###<html>

		<h1> ALPHABET LISTING S </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="T">
	<file name="###T.html###">
		###<html>

		<h1> ALPHABET LISTING T </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="U">
	<file name="###U.html###">
		###<html>

		<h1> ALPHABET LISTING U </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="V">
	<file name="###V.html###">
		###<html>

		<h1> ALPHABET LISTING V </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="W">
	<file name="###W.html###">
		###<html>

		<h1> ALPHABET LISTING W </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="X">
	<file name="###X.html###">
		###<html>

		<h1> ALPHABET LISTING X </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="Y">
	<file name="###Y.html###">
		###<html>

		<h1> ALPHABET LISTING Y </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>


<xsl:template match="Z">
	<file name="###Z.html###">
		###<html>

		<h1> ALPHABET LISTING Z </h1>
			<xsl:for-each select = "link">
				
				<xsl:variable name = "ref" select = "substring-before(., '#')"/>

				<ul>
					<li><a href="{$ref}"> <xsl:value-of select= "substring-after(., '#')"/></a></li>
				</ul>
				
			</xsl:for-each>
		</html>###
	</file>
</xsl:template>

</xsl:stylesheet>