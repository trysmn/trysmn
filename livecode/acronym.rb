sentence = "Trystan is the best"

def acronym(sentence)
  breakdown_sentence = sentence.split(" ")
  trys_acronym = []
  breakdown_sentence.map do |word|
    trys_acronym << word[0]
  end
  trys_acronym.join
end

puts acronym(sentence).upcase
