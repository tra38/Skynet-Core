require_relative 'characters'

  friendly = "friendly"
  hostile = "hostile"

#TODO: Add more verbs
def verb(trait, target = nil, emotion = "hostile" ) #Example of use: verb("Knowledge","Thomas", "friendly")
  action = nil
  if target == nil  #if no target is named, character acts by himself
    case trait
    when "Knowledge" || "Certainity" || "Proven"
    action = ["relied on peer-reviewed case studies", "remembered what he taught himself","recalled his held truths",
    "consulted his source code"].sample
    when "Actuality"
    action = ["knew exactly what was going on","grasped the inevitable","predicted this would happen"].sample
    when "Consider"
    action = ["mulled his options","deliberated","contemplated carefully","ran computer simulations","pondered","searched the lookup tables",
    "considered his options"].sample
    when "Pursuit"
    action = ["investigated the situation", "examined the evidence", "looked for clues", "sought clues",
    "#{adverb} searched for suspects"].sample
    when "Proaction"
    action = ["was ready to take action", "took charge of the situation", "rushed to the scene of the disaster",
    "ordered his followers to clean up the mess"].sample
    when "Effect"
    action = ["was aghast at how the situation came to be", "#{adverb} declared a War on Terror",
    "vowed that justice shall be served"].sample
  end
  else #if it names a target, then check to see if he is hostile to the target or friendly
    if emotion == "hostile" #creates a sentence revealing a hostile action the character takes towards the target
      case trait
      when "Certainity" || "Proven"
      action = ["boasted on his knowledge about #{target}", "was absolute sure about #{target}'s goals",
      "was certain about #{target}'s guilt", "had convictions about #{target}"].sample
      when "Knowledge"
      action =["recited his irrefutable case on #{target}", "revealed a dossier detailing all of #{target}'s misdeeds",
      "denounced #{target} as a lowlife with no respect for his superiors"].sample
      when "Actuality"
      action = ["blamed #{target}","identified #{target} as the guilty party","cursed #{target}",
      "knew #{target} was responsible"].sample
      when "Consider"
      action = ["identified #{target} as a threat", "classified #{target} as an enemy",
      "identified  #{target} as a legitimate target"].sample
      when "Pursuit" || "Proaction"
      action = ["sought #{target}", "went after #{target}", "attempted to locate #{target}", "looked for #{target}",
      "directed efforts against #{target}", "pursued #{target}"].sample
      when "Effect"
      action = ["vowed vengeance against #{target}", "declared that #{target} is a threat to humanity",
      "denounced the sins of #{target}"].sample
      end
    elsif emotion == "friendly" #creates a sentence revealing a friendly action the character takes towards the target
      case trait
      when "Certainity"
      action = ["trusted #{target} implicity", "was certain of #{target}'s purity", "accepted #{target}'s words"].sample
      when "Knowledge"
      action =["remembered #{target}'s loyalty", "revealed a dossier praising #{target}"].sample
      when "Actuality"
      action = ["knew #{target}'s innermost secrets","knew #{target} can be useful","identified #{target} as innocent"].sample
      when "Consider"
      action = ["identified #{target} as loyal", "classified #{target} as a friend",
      "identified  #{target} as a person to protect"].sample
      when "Pursuit" || "Proaction" || "Effect"
      action = ["vowed to defend #{target}","desired to save #{target}", "swore to protect #{target}",
      "saw #{target} as worthy"].sample
      end
    else #if invalid emotion, raises error
      raise ArgumentError, "#{emotion} is an invalid emotion. The emotion must either be friendly or hostile!"
    end
  end
  action
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
  grudgingly, grumpily, happily, hollowly, patiently, regretfully, sadly, shamefully, terrifyingly, warily].sample
end

def teststatement
  unblinkingeye = Protagonist.new
  puts "One day, while examining his perfect society, the Unblinking Eye discovered that #{location} was being attacked. The Unblinking Eye #{verb(unblinkingeye.random_purpose)}."
  puts "He #{verb(unblinkingeye.random_purpose,"the Communists")}."
end

teststatement