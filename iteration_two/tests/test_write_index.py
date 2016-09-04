from collections import defaultdict 


def default_dict():
	d = defaultdict()
	if d.get('A', None) == None:
		d['A'] = [['LINK', 'TITLE']]
	else:
		d['A'].append(['LINK', 'TITLE'])
	d['A'].append(['LINK', 'TITLE'])
	print d

	for item in d['A']:
		print item
	return d 

def write_dict(dic, court_name):

	file = open(court_name + '/alphabet_listings.xml', 'w+')
	delim = '    '
	for letter in dic.keys():
		file.write('<'+letter+'>\n')
		
		file.write(delim +'<page>\n')
		for item in d[letter]:
			link = item[0]
			title = item[1] 
			file.write((delim * 2)+ '<link>' + link + '</link>')
			file.write((delim * 2)+ '<title>' +title + '</title>')
		file.write('\n' + delim + '</page>')

		file.write('\n</'+letter+'>')
	print 'written to ' + court_name + '/alphabet_listings.xml	'


d = default_dict()
write_dict(d, 'ccd')