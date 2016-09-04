# generate judgement pages
import subprocess
import os
from collections import defaultdict
from bs4 import BeautifulSoup
import time 

# little fix for html formatting in judgement
def reformat(xml_file):
	xml_file = xml_file.replace('&lt;', '<')
	xml_file = xml_file.replace('&gt;', '>')
	return xml_file

def generate_judgements(court_name):
	print 'GENERATING COURT NAME: ', court_name
	# make a directory for the court if it doesn't exist
	if not os.path.exists(court_name):
		os.makedirs(court_name)
		os.makedirs(court_name + '/html/')
		os.makedirs(court_name + '/xml/')

	# perform xslt transformation
	subprocess.call('xsltproc transforms/judgements.xsl ' + 'db/' + court_name + '.xml' + ' > ' + court_name +'/xml/judgements_out.xml', shell=True)

	# open xlst transform output file
	# and passes it to reformatting function
	out = reformat(open(court_name+'/xml/judgements_out.xml').read())
	data = out.split("###")

	file_name = ''
	# create an alphabet index to store file titles
	alphabet_index = defaultdict()

	# write content of each html file found in the output file
	# to its own file
	for i in range(0,len(data),4):
		if i+1 != len(data):
			file_name = data[i+1]
			content = data[i+3]
			# creates the alphabet index
			fill_alphabet_index(alphabet_index, file_name, content)
		print 'writing html file: ', file_name
		file = open(court_name + '/html/' + file_name, 'w+')
		file.write(content)
		file.close()

	# write to xml file
	print 'writing alphabet index to xml...'
	alphabet_index_to_xml(alphabet_index, court_name)
	# convert alphabet index to html
	print 'converting alphabetic index to html...'
	alphabet_index_to_html(court_name)

	# write to xml file
	print 'writing index page letters to xml...'
	index_to_xml(alphabet_index, court_name)

	# convert index page to html
	index_to_html(court_name)
	print 'converting index page to html...'

def fill_alphabet_index(alphabet_index, file_name, content):

	# get the title from file content
	title_area = content[1:135]

	title = next(BeautifulSoup(title_area, "html.parser").select_one('title').stripped_strings)

	# first letter of title
	first_letter = title[0].upper()

	# fill the alphabet index
	if alphabet_index.get(first_letter, None) == None:
		alphabet_index[first_letter] = [[file_name, title]]
	else:
		alphabet_index[first_letter].append([file_name, title])

# writes the alphabet index to xml
def alphabet_index_to_xml(alphabet_index, court_name):
	file = open(court_name + '/xml/alphabet_index.xml', 'w+')
	file.write('<index>\n')
	delim = '    '
	for letter in alphabet_index.keys():
		file.write(delim + '<' + letter + '>\n')
		for data in alphabet_index[letter]:
			file.write((delim*2) + '<link>')
			file.write(data[0] + '#' + data[1] + '</link>\n')

		file.write(delim + '</' + letter + '>\n')
	file.write('</index>')

## writes alphabet index to html files
def alphabet_index_to_html(court_name):
	#subprocess.call('xsltproc test_substring.xsl tests/test_substring.xml > test_substring_out.xml', shell=True)
	subprocess.call('xsltproc transforms/alphabet_index.xsl ' + court_name +'/xml/alphabet_index.xml' + ' > ' + court_name +'/xml/alphabet_index_out.xml', shell=True)
	out = open(court_name +'/xml/alphabet_index_out.xml').read()
	data = out.split('###')
	file_name = ''
	for i in range(0, len(data), 4):
		if i+1 != len(data):
			file_name = data[i+1]
			content = data[i+3]
		print 'writing index file: ', file_name
		file = open(court_name + '/html/' + file_name, 'w')
		file.write(content)
		file.close()

def index_to_xml(alphabet_index, court_name):
	f  = open(court_name + '/xml/index_listing.xml', 'w+')
	delim = '    '
	f.write('<letters>\n')
	for letter in alphabet_index.keys():
		f.write(delim + '<letter>' + letter + '</letter>\n')
	f.write('</letters>')

def index_to_html(court_name):
	subprocess.call('xsltproc --stringparam basedir /home/jacob/Desktop/pocket_law/iteration_two/ transforms/index.xsl ' + court_name + '/xml/index_listing.xml' + '>' + court_name +'/xml/index_listing_out.xml', shell=True)
	out = open(court_name + '/xml/index_listing_out.xml').read()
	data = out.split('###')

	file_name = data[1]
	content = data[3]
	file = open(court_name +'/html/' +file_name, 'w')
	file.write(content)
	file.close()

courts = ['courts/ccd']
# to time code
t0 = time.time()
for court in courts:
	generate_judgements(court)
t1 = time.time()

print "code executed in: ", t1 - t0