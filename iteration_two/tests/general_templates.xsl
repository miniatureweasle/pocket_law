<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:param name="basedir"/>

<xsl:template name="menu">
		<xsl:param name = "superior-courts" />
		<xsl:param name = "constitutional-court" />
		<xsl:param name = "supreme-court-of-appeal" />
		<xsl:param name = "competition-appeal-court" />
		<xsl:param name = "high-courts" />
		<xsl:param name = "commercial-crime-court" />
		<xsl:param name = "eastern-cape-high-court-bhisho" />
		<xsl:param name = "eastern-cape-high-court-east-london-local-court" />
		<xsl:param name = "eastern-cape-high-court-grahamstown" />
		<xsl:param name = "eastern-cape-high-court-mthatha" />
		<xsl:param name = "eastern-cape-high-court-port-elizabeth" />
		<xsl:param name = "electoral-court" />
		<xsl:param name = "equality-court" />
		<xsl:param name = "free-state-high-court-bloemfontein" />
		<xsl:param name = "high-court-northern-cape-division-kimberley" />
		<xsl:param name = "high-courts-gauteng" />
		<xsl:param name = "high-courts-eastern-cape" />
		<xsl:param name = "high-courts-kwazulu-natal" />
		<xsl:param name = "kwazulu-natal-high-court-durban" />
		<xsl:param name = "kwazulu-natal-high-court-pietermaritzburg" />
		<xsl:param name = "land-claims-court" />
		<xsl:param name = "limpopo-high-court-thohoyandou" />
		<xsl:param name = "north-gauteng-high-court-pretoria" />
		<xsl:param name = "north-west-high-court-mafikeng" />
		<xsl:param name = "south-gauteng-high-court-johannesburg" />
		<xsl:param name = "tax-court" />
		<xsl:param name = "western-cape-high-court-cape-town" />
		<xsl:param name = "labour-courts" />
		<xsl:param name = "labour-appeal-court" />
		<xsl:param name = "labour-court" />
		<xsl:param name = "labour-court-cape-town" />
		<xsl:param name = "labour-court-johannesburg" />
		<xsl:param name = "labour-court-durban" />
		<xsl:param name = "labour-court-port-elizabeth" />
		<xsl:param name = "special-courts" />
		<xsl:param name = "competition-tribunal" />
		<xsl:param name = "companies-tribunal" />
		<xsl:param name = "consumer-goods-and-services-ombud" />
		<xsl:param name = "court-of-the-commissioner-of-patents" />
		<xsl:param name = "national-consumer-tribunal" />
		<xsl:param name = "water-tribunal" />
		<xsl:param name = "law-journals" />
		<xsl:param name = "african-disability-rights-yearbook" />
		<xsl:param name = "african-human-rights-law-journal" />
		<xsl:param name = "de-rebus" />
		<xsl:param name = "de-jure-law-journal" />
		<xsl:param name = "law-democracy-and-development-law-journal" />
		<xsl:param name = "potchefstroom-electronic-law-journal-potchefstroomse-elektroniese-regsblad" />
		<xsl:param name = "speculum-juris" />
		<xsl:param name = "rules-of-court" />
		<xsl:param name = "rules-and-practice-notes-of-superior-courts" />
		<xsl:param name = "rules-of-magistrates-courts" />


	
<div class="dropdown-list">
		<div class="dropdown">
			<button class="dropbtn">SUPERIOR COURTS</button>
				<div class="dropdown-content">
						<a href='{$constitutional-court}index.html'>Constitutional Court</a>
					<a href='{$supreme-court-of-appeal}index.html'>Supreme Court of Appeal</a>
					<a href='{$competition-appeal-court}index.html'>Competition Appeal Court</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">HIGH COURTS</button>
				<div class="dropdown-content">
						<a href='{$commercial-crime-court}index.html'>Commercial Crime Court</a>
					<a href='{$eastern-cape-high-court-bhisho}index.html'>Eastern Cape High Court, Bhisho</a>
					<a href='{$eastern-cape-high-court-east-london-local-court}index.html'>Eastern Cape High Court, East London Local Court</a>
					<a href='{$eastern-cape-high-court-grahamstown}index.html'>Eastern Cape High Court, Grahamstown</a>
					<a href='{$eastern-cape-high-court-mthatha}index.html'>Eastern Cape High Court, Mthatha</a>
					<a href='{$eastern-cape-high-court-port-elizabeth}index.html'>Eastern Cape High Court, Port Elizabeth</a>
					<a href='{$electoral-court}index.html'>Electoral Court</a>
					<a href='{$equality-court}index.html'>Equality Court</a>
					<a href='{$free-state-high-court-bloemfontein}index.html'>Free State High Court, Bloemfontein</a>
					<a href='{$high-court-northern-cape-division-kimberley}index.html'>High Court, Northern Cape Division, Kimberley</a>
					<a href='{$high-courts-gauteng}index.html'>High Courts - Gauteng</a>
					<a href='{$high-courts-eastern-cape}index.html'>High Courts - Eastern Cape</a>
					<a href='{$high-courts-kwazulu-natal}index.html'>High Courts - Kwazulu Natal</a>
					<a href='{$kwazulu-natal-high-court-durban}index.html'>Kwazulu-Natal High Court, Durban</a>
					<a href='{$kwazulu-natal-high-court-pietermaritzburg}index.html'>Kwazulu-Natal High Court, Pietermaritzburg</a>
					<a href='{$land-claims-court}index.html'>Land Claims Court</a>
					<a href='{$limpopo-high-court-thohoyandou}index.html'>Limpopo High Court, Thohoyandou</a>
					<a href='{$north-gauteng-high-court-pretoria}index.html'>North Gauteng High Court, Pretoria</a>
					<a href='{$north-west-high-court-mafikeng}index.html'>North West High Court, Mafikeng</a>
					<a href='{$south-gauteng-high-court-johannesburg}index.html'>South Gauteng High Court, Johannesburg</a>
					<a href='{$tax-court}index.html'>Tax Court</a>
					<a href='{$western-cape-high-court-cape-town}index.html'>Western Cape High Court, Cape Town</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">LABOUR COURTS</button>
				<div class="dropdown-content">
						<a href='{$labour-appeal-court}index.html'>Labour Appeal Court</a>
					<a href='{$labour-court}index.html'>Labour Court</a>
					<a href='{$labour-court-cape-town}index.html'>Labour Court Cape Town </a>
					<a href='{$labour-court-johannesburg}index.html'>Labour Court Johannesburg</a>
					<a href='{$labour-court-durban}index.html'>Labour Court Durban</a>
					<a href='{$labour-court-port-elizabeth}index.html'>Labour Court Port Elizabeth</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">SPECIAL COURTS</button>
				<div class="dropdown-content">
						<a href='{$competition-tribunal}index.html'>Competition Tribunal</a>
					<a href='{$companies-tribunal}index.html'>Companies Tribunal</a>
					<a href='{$consumer-goods-and-services-ombud}index.html'>Consumer Goods and Services Ombud</a>
					<a href='{$court-of-the-commissioner-of-patents}index.html'>Court of the Commissioner of Patents</a>
					<a href='{$national-consumer-tribunal}index.html'>National Consumer Tribunal</a>
					<a href='{$water-tribunal}index.html'>Water Tribunal</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">LAW JOURNALS</button>
				<div class="dropdown-content">
						<a href='{$african-disability-rights-yearbook}index.html'>African Disability Rights Yearbook </a>
					<a href='{$african-human-rights-law-journal}index.html'>African Human Rights Law Journal</a>
					<a href='{$de-rebus}index.html'>DE REBUS</a>
					<a href='{$de-jure-law-journal}index.html'>De Jure Law Journal</a>
					<a href='{$law-democracy-and-development-law-journal}index.html'>Law, Democracy and Development Law Journal</a>
					<a href='{$potchefstroom-electronic-law-journal-potchefstroomse-elektroniese-regsblad}index.html'>Potchefstroom Electronic Law Journal // Potchefstroomse Elektroniese Regsblad</a>
					<a href='{$speculum-juris}index.html'>Speculum Juris</a>
					<a href='{$rules-of-court}index.html'>Rules of Court</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">RULES OF COURT</button>
				<div class="dropdown-content">
						<a href='{$rules-and-practice-notes-of-superior-courts}index.html'>Rules and Practice Notes of Superior Courts</a>
					<a href='{$rules-of-magistrates-courts}index.html'>Rules of Magistrates Courts</a>
			</div>
		</div>

</div>
</xsl:template>

</xsl:stylesheet>
