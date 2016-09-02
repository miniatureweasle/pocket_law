# generate alphabet listings for me quick quick

f = open('alphabet_index_test.xsl', 'w+')

header = """<?xml version="1.0" encoding="UTF-8"?>

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
"""
footer = "</xsl:stylesheet> "

f.write(header)


template = """
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

"""
t_arr = template.split('\n')

print t_arr[1]
print t_arr[2]
print t_arr[5]

letters = 'A B C D E F G H I J K L M N O P Q R S T U V W X Y Z'.split(' ')
print letters
for l in letters:
	new = []
	for line in t_arr:
		new.append(line)

	new[1] = new[1].replace('C', l)
	print new[1]
	new[2] = new[2].replace('C',l)
	new[5] = new[5].replace('C', l)
	new_template  = '\n'.join(new)
	f.write(new_template)
f.write(footer)