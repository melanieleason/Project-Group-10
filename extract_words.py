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
	
	with open("uniquewords.txt", "w", encoding = "latin-1") as f:
		cnt = Counter()
		for word in words:
			cnt[word] += 1
		unique_words = []
		# pprint(cnt.items())
		for k, v in cnt.items():
			if v == 1:
				unique_words.append(k)
		# pprint(unique_words)
		for word in unique_words:
			f.write(word + "\n")
	
	with open("wordfrequency.txt", "w", encoding = "latin-1") as f:
		# frequency: number of words with that frequency
		freq_words = {v: 0 for v in cnt.values()}
		for k, v in freq_words.items():
			for v1 in cnt.values():
				if k == v1:
					freq_words[k] +=1
		# print(freq_words)
		for k, v in freq_words.items():
			f.write(str(k) + ": " + str(v) + "\n")
		




if __name__ == "__main__":
	main()
