import re

def main():

	in_file = open("PeterPan.txt", "r")
	text  = in_file.read()
	text = text.lower()
	text = text.split()

	text1 = []
	for i in text:
		i = re.findall('[a-z]+', i)
		text1.append(i)

	print(text1)

	in_file.close()



main()