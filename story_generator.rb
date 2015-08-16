require 'yaml'

characters_file = File.open("characters.yml")
characters_data = YAML.load(characters_file)

words_file = File.open("words.yml")
@words_data = YAML.load(words_file)

@selfverbs = @words_data["SelfVerbs"]

#Method to sample from a Hash
#Reference: http://stackoverflow.com/questions/15454632/is-there-an-equivalent-to-arraysample-for-hashes-in-ruby
def sample(original_hash)
  original_hash[original_hash.keys.sample]
end

def location
  @words_data["Locations"].sample
end

def adverb
  @words_data["Adverbs"].sample
end

def filler
  @words_data["Filler"].sample
end

def word(trait)
  @selfverbs[trait].sample
end

def random_trait_category
  ["Purpose","Motivation","Methodology","Evaluation"].sample
end

def random_word(character)
  category = random_trait_category
  random_trait = character[category].sample
  word(random_trait)
end

def enemy(character)
  character["Enemy"]
end
main_character = sample(characters_data["Characters"])
enemy = enemy(main_character)

# Test Sentence 1
puts "One day, while examining his perfect society, the Unblinking Eye discovered that #{location} was being attacked. The Unblinking Eye #{random_word(main_character)}."

# Test Sentence 2
puts "At the #{location}, the Tempeter #{random_word(enemy)}. He was happy, as most people
   were. In the bad old days, the Tempeter would #{adverb} work every day of his life. And he
   hated it! Now, he no longer has to work. But now the Tempeter was bored. And he wanted to pass
   the time. So the Tempeter had an idea: 'I want to write a poem' The Tempeter was in a happy mood.

   He #{adverb} went to his friend, the Unblinking Eye. The Unblinking Eye #{random_word(main_character)}, and
   #{adverb }wrote the story. The #{filler} button analyzed the character’s inner personality and wrote an excellent poem.

   The character looked at the #{filler} poem. It was great, it was grand, and it was terrible. The character tore it to pieces. The other character was confused. “I only wanted to make you happy, because I wanted you to---”

   “I wanted to write a poem! Not you!” The first character cried."
