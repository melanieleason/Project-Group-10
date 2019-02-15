import re
from collections import Counter
from pprint import pprint

def main():
	with open("PeterPan.txt", encoding='latin-1') as f:
		text = f.read().lower()
		words = re.findall('[a-z]+', text)
	
	# pprint(words)

	with open("allwords.txt", "w", encoding = "latin-1") as f:
		for word in words:
			f.write(word + '\n')
		




if __name__ == "__main__":
	main()
