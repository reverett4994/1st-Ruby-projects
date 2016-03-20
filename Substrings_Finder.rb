def substring(input,index)
word_list=[]
input=input.downcase
index.each{ |word| word_list+= input.scan(word) }
p word_list
counter=0
  while counter<index.length
    p "#{index[counter]} is found this many times in the text!"
    check_word=index[counter]
    p word_list.count(check_word)
    counter+=1
  end
end

input=[]
index=["ryan","everett","hey","hi"]
p "Enter text you would like to check"
user_words=gets.chomp
substring(user_words,index)
