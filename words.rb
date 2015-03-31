def verb(trait,target = nil)
  action = nil
  if target == nil
    case trait
    when "Knowledge" || "Certainity"
    action = ["relied on authoritative certainty", "remembered what he taught himself","knew his held truths"].sample
    when "Actuality"
    action = ["knew exactly what was going on","grasped the inevitable","predicted this would happen"].sample
    when "Consider"
    action = ["mulled","deliberated","contemplated","ran computer simulations","pondered","searched the lookup tables",
    "considered"].sample
    when "Pursuit"
    action = ["investigated the situation", "examined the evidence", "looked for clues", "sought clues",
    "frantically searched for suspects"].sample
  end
  else
    case trait
    when "Certainity" || "Knowledge"
    action = ["boasted on his knowledge about #{target}", "was absolute sure about #{target}'s goals",
    "was certain about #{target}", "had convictions about #{target}", "recited his irrefutable case to #{target}"].sample
    when "Actuality"
    action = ["blamed #{target}","identified #{target} as the guilty party"].sample
    when "Consider"
    action = ["identified #{target} as a threat", "classified #{target} as an enemy",
    "identified  #{target} as a legitimate target"].sample
    when "Pursuit"
    action = ["sought #{target}", "went after #{target}", "attempted to locate #{target}", "looked for #{target}",
    "directed efforts against #{target}", "pursued #{target}"].sample
    end
  end
  return action
end

def noun(trait)
  noun = nil
  case trait
  when "Knowledge"
    noun = "the Central Data Mainframe"
  when "Actuality"
    action = "the Virtual Simulations"
  when "Consider"
    action = "the 'Investigator' Botnet"
  when "Pursuit"
    action = "Police Drone HQ"
  when "Certainity"
    action = "the Institute of AI Research"
  end
  return noun  
end
