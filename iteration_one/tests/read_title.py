# ways to read title of html page

def read_title(html):
	data = html.split('\n')
	print data

read_title(open('7.html', 'r').read())


