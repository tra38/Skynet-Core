require_relative 'characters'

def verb(trait, target = nil, emotion = :hostile ) #Example of use: verb("Knowledge","Thomas", :friendly)
  trait.downcase!
  if target == nil
    SelfVerb.new.send "#{trait}"
  else
    case emotion
    when :hostile
    HostileVerb.new(target).send "#{trait}"
    when :friendly
    FriendlyVerb.new(target).send "#{trait}"
    else
      raise ArgumentError, "#{emotion} is an invalid emotion. The emotion must either be friendly or hostile!"
    end
  end
end



#TODO: Add more verbs
class SelfVerb
  def knowledge
  ["relied on peer-reviewed case studies", "remembered what he taught himself","recalled his held truths",
    "consulted his source code"].sample
  end

  def certainity
  ["relied on peer-reviewed case studies", "remembered what he taught himself","recalled his held truths",
    "consulted his source code"].sample
  end

  def proven
    ["relied on peer-reviewed case studies", "remembered what he taught himself","recalled his held truths",
    "consulted his source code"].sample
  end

  def actuality
    ["knew exactly what was going on","grasped the inevitable","predicted this would happen"].sample
  end

  def consider
    ["mulled his options","deliberated","contemplated carefully","ran computer simulations","pondered","searched the lookup tables",
    "considered his options"].sample
  end

  def pursuit
    ["investigated the situation", "examined the evidence", "looked for clues", "sought clues",
    "#{adverb} searched for suspects"].sample
  end

  def proaction
    ["was ready to take action", "took charge of the situation", "rushed to the scene of the disaster",
    "ordered his followers to clean up the mess"].sample
  end

  def effect
    ["was aghast at how the situation came to be", "#{adverb} declared a War on Terror",
    "vowed that justice shall be served"].sample
  end

  def thought
    ["thought #{adverb} about the situation","#{adverb} imagined alternatives","pondered about the truth","#{adverb} considered his options"].sample
  end

  def method_missing(object)
    "declares a missing method for #{object}"
  end

end


class HostileVerb
  attr_reader :target

  def initialize(target)
    @target = target
  end

  def certainity
      ["boasted on his knowledge about #{target}", "was absolute sure about #{target}'s goals",
      "was certain about #{target}'s guilt", "had convictions about #{target}"].sample
  end

  def proven
      ["boasted on his knowledge about #{target}", "was absolute sure about #{target}'s goals",
      "was certain about #{target}'s guilt", "had convictions about #{target}"].sample
  end

  def knowledge
    ["recited his irrefutable case on #{target}", "revealed a dossier detailing all of #{target}'s misdeeds",
      "denounced #{target} as a lowlife with no respect for his superiors"].sample
  end

  def actuality
    ["blamed #{target}","identified #{target} as the guilty party","cursed #{target}",
      "knew #{target} was responsible"].sample
  end

  def consider
    ["identified #{target} as a threat", "classified #{target} as an enemy",
      "identified  #{target} as a legitimate target"].sample
  end

  def pursuit
    ["sought #{target}", "went after #{target}", "attempted to locate #{target}", "looked for #{target}",
      "directed efforts against #{target}", "pursued #{target}"].sample
  end

  def proaction
    ["sought #{target}", "went after #{target}", "attempted to locate #{target}", "looked for #{target}",
      "directed efforts against #{target}", "pursued #{target}"].sample
  end

  def effect
    ["vowed vengeance against #{target}", "declared that #{target} is a threat to humanity",
      "denounced the sins of #{target}"].sample
  end

  def thought
    ["imagined how he would deal with #{target}","thought about #{target}'s misdeeds","pondered on the best way to fight #{target}","considered #{target}'s weaknesses"].sample
  end

  def perception
    "perceived #{target} as an enemy"
  end



end

class FriendlyVerb
  attr_reader :target

  def initialize(target)
    @target = target
  end

  def certainity
    ["trusted #{target} implicity", "was certain of #{target}'s purity", "accepted #{target}'s words"].sample
  end

  def knowledge
    ["remembered #{target}'s loyalty", "revealed a dossier praising #{target}"].sample
  end

  def actuality
    ["knew #{target}'s innermost secrets","knew #{target} can be useful","identified #{target} as innocent"].sample
  end

  def consider
    ["identified #{target} as loyal", "classified #{target} as a friend",
      "identified  #{target} as a person to protect"].sample
  end

  def pursuit
    ["vowed to defend #{target}","desired to save #{target}", "swore to protect #{target}",
      "saw #{target} as worthy"].sample
  end

  def proaction
    ["vowed to defend #{target}","desired to save #{target}", "swore to protect #{target}",
      "saw #{target} as worthy"].sample
  end

  def effect
    ["vowed to defend #{target}","desired to save #{target}", "swore to protect #{target}",
      "saw #{target} as worthy"].sample
  end

  def thought
    ["imagined how he would help #{target}","thought about #{target}'s good deeds","pondered on the best way to assist #{target}","considered #{target}'s strengths"].sample
  end

  def perception
    "perceived #{target} as a friend"
  end


end

def location
  ["the Central Data Mainframe", "the Virtual Simulations", "the 'Investigator' Botnet", "Police Drone HQ",
  "the Institute of AI Research"].sample
end

#TODO: Add more quotes!
def victoryquote(trait)
  quote = nil
  case trait
  when "Knowledge"
    noun = "We know all. We see all. We are all."
  when "Actuality"
    noun = "All of this had happened before in my simulations."
  when "Consider"
    noun = "We have prepared for such an event."
  when "Pursuit"
    noun = "We will stop all enemies of the state."
  when "Certainity"
    noun = "We are correct. We have always been correct. We will always be correct."
  end
  quote
end

#TODO: test all adjectives below this line
def coloradjective
  %w[black, golden, green, grey, grimy, brown, colorful, grimy, invisible, iridescent, monochromatic,
  purple, red, red-hot, white, blue, chrome-platted].sample
end

def hugeadjective
  %w[mammoth, hulking, humongous, gigantic].sample
end

def miscapperance #TODO: sort these adjectives into more logical categories
  %w[ancient, battered, bearded, beautiful, bent, blinding, bubbly, colossal, corrugated,
  crooked, crusty, cubic, dazzling, delicate, dirty, dry, emaciated, exposed, filthy, floppy, fluffy, foamy,
  funny-looking, furry, furrowed, fuzzy, glamourous, glittery, glossy, jagged,
  lickable, limp, microscopic, moldy, mossy, muscular, narrow, orbital, petite, plump, powdery,
  pretty, ragged, ratty, revealing, shady, short, shriveled, slender, slippery, sloppy, smoggy, soapy,
  sparkling, spiky, spotless, stout, sweaty, symmetrical, tall, thick, towering, transparent,
  ugly, uneven, veiny, wet, whopping, wide, wide-eyed, windy, wooden, wooly, wrinkly].sample
end

def badmood
  %w[aggravated, angry, ashamed, bittersweet, cranky, disappointed, emo, envious, evil, frightened, furious
  guilty, hateful, horrified, humiliated, jealous, raging, remorseful, sad, severe, shock, sorrowful,
  tormented].sample
end

def goodmood
  %w[awed, arrogant, blissful, content, gay, gleeful, happy, joyful, optimistic, pleasured, proud,
  smug, thankful].sample
end

def lovemood
  %w[devilish, flirty, loving, lustful, naughty].sample
end

def miscmood
  %w[bored, cheeky, contemptuous, groggy, hungry, impatient, indifferent, longing, mad, naughty, sullen,
  surprised].sample
end

def filleradjective #only A-C, there's probably no more reason to add D-Z, as these are really just filler words
  %w[absolute, academic, acidic, acoustic, active, adaptable, adequate, administrative, advantageous, advisable,
  aggressive, alien, all-natural,amazing, ambitious, amiable, appealing, appetizing, artsy, assertive, astounding
  athletic, awful, barbeque, bashful, beloved, bilious, blasphemous, blood-thirsty, bloddy, bold, bouncy,
  bountiful, brave, breathtaking, bulging, busted, buttery, captivating, casual, celestial, certified, charitable,
  charming, cheerful, childish, chilly, clever, cold, complimentary, comely, contaminated, cooperative, courageous
  crackly, criminal, critical, cuddly, cultural, creative].sample
end

def adverb
  %w[angrily, anxiously, arrogantly, cautiously, enviously, evilly, frantically, gladly, gleefully, greedily,
  grudgingly, grumpily, happily, hollowly, patiently, regretfully, sadly, shamefully, terrifyingly, warily, deeply].sample
end

def teststatement
  unblinkingeye = Protagonist.new
  puts "One day, while examining his perfect society, the Unblinking Eye discovered that #{location} was being attacked. The Unblinking Eye #{verb(unblinkingeye.random_purpose)}."
  puts "He #{verb(unblinkingeye.random_purpose,"the Communists")}."
end

def error_trigger
  unblinkingeye = Protagonist.new
  puts "#{verb(unblinkingeye.random_purpose,"socialism",:madly)}"
end

def short_story
  unblinkingeye = Protagonist.new
  tempeter = Contagonist.new
  puts "At the #{location}, the Tempeter #{verb(tempeter.random_purpose)}. He was happy, as most people
   were. In the bad old days, the Tempeter would #{adverb} work every day of his life. And he
   hated it! Now, he no longer has to work. But now the Tempeter was bored. And he wanted to pass
   the time. So the Tempeter had an idea: 'I want to write a poem' The Tempeter was in a #{goodmood} mood.

   He went to his friend, the Unblinking Eye. The Unblinking Eye #{verb(unblinkingeye.random_purpose)}, and
   wrote the story. The button analyzed the character’s inner personality and wrote an excellent poem.

   The character looked at the poem. It was great, it was grand, and it was terrible. The character tore it to pieces. The other character was confused. “I only wanted to make you happy, because I wanted you to---”

   “I wanted to write a poem! Not you!” The first character cried."
end

teststatement
# error_trigger
short_story
