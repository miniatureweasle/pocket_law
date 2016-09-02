# build menu xslt

from bs4 import BeautifulSoup

# extract each type of court
# for each type of court insert link to the correct place


#f = open("/home/jacob/Desktop/iteration_one/transforms/general_templates.xsl").read().split('\n')
#print f[18]

f = open('Constitutional Court decisions _ SAFLII.html').read()

soup = BeautifulSoup(f, "html.parser")
menu_items = soup.find_all('li')
for item in menu_items:
	print item