# find h1
# finds h1 tags in html
# Jacob Fionn

from bs4 import BeautifulSoup

def find_h1(html):
	
	data = html[1:135]

	title = next(BeautifulSoup(data, "html.parser").select_one('title').stripped_strings)


	print title

html = """
<html>
<head>
<title>Glaxo Wellcome (Pty) Ltd Others v D. Terblanche Others (04/CAC/Oct00) [2000] ZACAC 2 (04 December 2000);</title>
<style type="text/css">@import url(../../../style/pl.css); </style>
</head>
<div class="dropdown-list">
<div class="dropdown">
<button class="dropbtn">SUPERIOR COURTS</button><div class="dropdown-content">
<a href="index.html"> CONSTITUTIONAL COURT </a><a href="#"> SUPREME COURT OF APPEAL </a><a href="#"> COMPETITION APPEAL COURT </a>
</div>
</div>
<div class="dropdown">
<button class="dropbtn">HIGH COURTS</button><div class="dropdown-content">
<a href="#"></a><a href="#"> Link 2 </a>
</div>
</div>
""" 

print find_h1(html)

