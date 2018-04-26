import re

def matchRegex(regex, filename):
	f = open(filename, 'r', encoding='utf-8')
	p = re.compile(regex)
	s = f.readlines()
	for line in s:
		for t in p.finditer(line):
		    print(t.group())
	f.close()

# Problem 1
def printCourseNumbers(fileNameAsAString):
	regex = '[A-Z][A-Z][A-Z][A-Z](/[A-Z][A-Z][A-Z][A-Z])? [0-9][0-9][0-9]'
	matchRegex(regex, fileNameAsAString)


# Problem 2
def printPhoneNumbers(fileNameAsAString):
	regex = '[0-9][0-9][0-9]\.[0-9][0-9][0-9]\.[0-9][0-9][0-9][0-9]'
	matchRegex(regex, fileNameAsAString)


# Problem 3
def printEmailAddresses(fileNameAsAString):
	regex = '[A-Za-z0-9_-]+(\.[A-Za-z0-9_-]+)*@[A-Za-z0-9][A-Za-z0-9]+\.[A-Za-z][A-Za-z]+'
	matchRegex(regex, fileNameAsAString)


# Problem 4
def swapEmailAddresses(fileNameAsAString):
	f = open(fileNameAsAString, 'r', encoding='utf-8')
	f2 = open('ContactBucknell2.html', 'w', encoding='utf-8')
	s = f.readlines()
	count = 0
	for line in s:
		newline = re.sub(r'([A-Za-z0-9_-]+)\.([A-Za-z0-9_-]+)@([A-Za-z0-9][A-Za-z0-9]+\.[A-Za-z][A-Za-z]+)', r'\2.\1@\3', line)
		f2.write(newline)
	f.close()
	f2.close()

def main():
	# Test run of problem 1
	printCourseNumbers('SocialJusticeMinor.html')
	# Test run of problem 2
	printPhoneNumbers('ContactBucknell.html')
	# Test run of problem 3
	printEmailAddresses('ContactBucknell.html')
	# Test run of problem 4
	swapEmailAddresses('ContactBucknell.html')

##main()


