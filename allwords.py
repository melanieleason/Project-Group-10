import re

def main():

	in_file = open("PeterPan.txt", "r")
	text  = in_file.read()
	text = text.lower()
	text = text.split()

	word_list = []
	for i in text:
		i = re.findall('[a-z]+', i)
		word_list.append(i)

	in_file.close()

	new_file = open("allwords.txt", "w")

	string = ""
	for word in word_list:
		word = str(word)
		string += word + "\n"


	new_file.write(string)




main()