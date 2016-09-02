<?xml version="1.0" encoding="UTF-8"?>

<!-- 
   Stylesheet to tranfrom Pocket Law
   Jacob Fionn Goldberg
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>


<xsl:template name="menu">
	<xsl:param name="ccd_prefix"/>
	<xsl:param name ="scoa_prefix"/>

	<div class="dropdown-list">

	<div class="dropdown">
		<button class="dropbtn">SUPERIOR COURTS</button>
		<div class="dropdown-content">
			<a href="{$ccd_prefix}index.html"> CONSTITUTIONAL COURT </a>
			<a href="#"> SUPREME COURT OF APPEAL </a>
			<a href="#"> COMPETITION APPEAL COURT </a>
		</div>
	</div>

	<div class="dropdown">
		<button class="dropbtn">HIGH COURTS</button>
		<div class="dropdown-content">
			<a href="#">  </a>
			<a href="#"> Link 2 </a>
		</div>
	</div>

	<div class="dropdown">
		<button class="dropbtn">LABOUR COURTS</button>
		<div class="dropdown-content">
			<a href="#"> Link 1 </a>
			<a href="#"> Link 2 </a>
		</div>
	</div>
	
	<div class="dropdown">
		<button class="dropbtn">SPECIAL COURTS</button>
		<div class="dropdown-content">
			<a href="#"> Link 1 </a>
			<a href="#"> Link 2 </a>
		</div>
	</div>
	
	<div class="dropdown">
		<button class="dropbtn">LAW JOURNALS</button>
		<div class="dropdown-content">
			<a href="#"> Link 1 </a>
			<a href="#"> Link 2 </a>
		</div>
	</div>
	
	<div class="dropdown">
		<button class="dropbtn">RULES OF COURT</button>
		<div class="dropdown-content">
			<a href="#"> Link 1 </a>
			<a href="#"> Link 2 </a>
		</div>
	</div>

	</div>

</xsl:template>

</xsl:stylesheet>
