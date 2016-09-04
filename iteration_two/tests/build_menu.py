# build menu xslt
from slugify import slugify
from bs4 import BeautifulSoup

def write_variables(variables):
	v_list = ""
	for variable in variables:
		v_list += '		<xsl:param name = "' + slugify(variable)+ '" />\n'
	v_list += '\n\n'
	return v_list

def fill_menu(court_type, courts):
	menu = """		<div class="dropdown">
			<button class="dropbtn">TYPE</button>
				<div class="dropdown-content">
	"""
	delim = '	'
	menu = menu.replace('TYPE', court_type)
	for court in courts:
		menu += "					<a href='{$"+slugify(court)+"}index.html'>"+court+"</a>\n"

	menu += '			</div>\n'
	menu += '		</div>\n\n'
	return menu

f = open('Constitutional Court decisions _ SAFLII.html').read()
soup = BeautifulSoup(f, "html.parser")
hits = soup.find_all('li')
menu_items = []

for item in hits:
	menu_items.append(item.next.next)
	print item.next.next


g = open("/home/jacob/Desktop/pocket_law/iteration_two/transforms/general_templates.xsl", "r").read().split('\n')


top = """<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="menu">
"""	

bottom = """
</xsl:template>

</xsl:stylesheet>
"""

menu_file = open("general_templates.xsl", "w+")

menu_file.write(top)
menu_file.write(write_variables(menu_items))
menu_file.write('	\n<div class="dropdown-list">\n')
menu_file.write(fill_menu("SUPERIOR COURTS", menu_items[1:4]))
menu_file.write(fill_menu("HIGH COURTS", menu_items[5:27]))
menu_file.write(fill_menu("LABOUR COURTS", menu_items[28:34]))
menu_file.write(fill_menu("SPECIAL COURTS", menu_items[35:41]))
menu_file.write(fill_menu("LAW JOURNALS", menu_items[42:50]))
menu_file.write(fill_menu("RULES OF COURT", menu_items[50:52]))
menu_file.write('</div>')
menu_file.write(bottom)

print menu_items.index('Rules of Court')
print len(menu_items)






