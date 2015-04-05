  friendly = "friendly"
  hostile = "hostile"

def verb(trait,target = nil, emotion = "hostile" ) #Example of use: verb("Knowledge","Thomas", "friendly")
  action = nil
  if target == nil  #if no target is named, character acts by himself
    case trait
    when "Knowledge" || "Certainity"
    action = ["relied on the authoritative certainty of past observations", "remembered what he taught himself","recalled his held truths",
    "consulted his source code"].sample
    when "Actuality"
    action = ["knew exactly what was going on","grasped the inevitable","predicted this would happen"].sample
    when "Consider"
    action = ["mulled his options","deliberated","contemplated carefully","ran computer simulations","pondered","searched the lookup tables",
    "considered his options"].sample
    when "Pursuit"
    action = ["investigated the situation", "examined the evidence", "looked for clues", "sought clues",
    "frantically searched for suspects"].sample
  end
  else #if it names a target, then check to see if he is hostile to the target or friendly
    if emotion == "hostile" #creates a sentence revealing a hostile action the character takes towards the target
      case trait
      when "Certainity"
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
      when "Pursuit"
      action = ["sought #{target}", "went after #{target}", "attempted to locate #{target}", "looked for #{target}",
      "directed efforts against #{target}", "pursued #{target}"].sample
      end
    elsif emotion == "friendly" #creates a sentence revealing a friendly action the character takes towards the target
      puts "I'll code in friendly behavior here later"
    else #if invalid emotion, raises error
      raise ArgumentError, "#{emotion} is an invalid emotion. The emotion must either be friendly or hostile!"
    end
  end
  action
end

def noun(trait) #different locations that are aligned to traits
  noun = nil
  case trait
  when "Knowledge"
    noun = "the Central Data Mainframe"
  when "Actuality"
    noun = "the Virtual Simulations"
  when "Consider"
    noun = "the 'Investigator' Botnet"
  when "Pursuit"
    noun = "Police Drone HQ"
  when "Certainity"
    noun = "the Institute of AI Research"
  end
  noun  
end

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

def badmood
  %w[aggravated, angry, ashamed, bittersweet, cranky, disappointed, emo, envious, evil, frightened, furious
  guilty, hateful, horrified, humiliated, jealous, raging, remorseful, sad, severe, shock, sorrowful,
  tormented].sample

def goodmood
  %w[awed, arrogant, blissful, content, gay, gleeful, happy, joyful, optimistic, pleasured, proud,
  smug, thanful].sample
  
def lovemood
  %w[devilish, flirty, loving, lustful, naughty].sample

def miscmood
  %w[bored, cheeky, contemptuous, groggy, hungry, impatient, indifferent, longing, mad, naughty, sullen,
  surprised].sample
  
def adjective.filler #only A-C
  %w[absolute, academic, acidic, acoustic, active, adaptable, adequate, administrative, advantageous, advisable,
  aggressive, alien, all-natural,amazing, ambitious, amiable, appealing, appetizing, artsy, assertive, astounding
  athletic, awful, barbeque, bashful, beloved, bilious, blasphemous, blood-thirsty, bloddy, blue, bold, bouncy,
  bountiful, brave, breathtaking, bulging, busted, buttery, captivating, casual, celestial, certified, charitable,
  charming, cheerful, childish, chilly, clever, cold, complimentary, comely, contaminated, cooperative, courageous
  crackly, criminal, critical, cuddly, cultural, creative].sample

def teststatement
  unblinkingeye = Protagonist.new
  puts "One day, while examining his perfect society, the Unblinking Eye discovered that #{noun(unblinkingeye.purpose.sample)} was being attacked. The Unblinking Eye #{verb(unblinkingeye.purpose.sample)}."
  puts "He #{verb(unblinkingeye.purpose.sample,"the Communists")}."
end
