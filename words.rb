def verb(trait)
  action = nil
  case trait
  when "Knowledge"
    action = ["relied on authoritative certainty", "remember what he taught himself","knew the held truths"].sample
  when "Actuality"
    action = ["knew exactly what was going on","grasped the inevitable","had already predicted this"].sample
  when "Consider"
    action = ["mulled","deliberated","contemplated","ran computer simulations","pondered","searched the lookup tables",
    "considered"].sample
  when "Pursuit"
    action = ["sought", "went after", "attempted to locate", "looked for", "directed efforts against"].sample
  when "Certainity"
    action = ["had no doubts about his knowledge", "was absolute sure", "was certain", "had conviction","knew his case was irrefutable"].sample
  end
  return action
end

def noun(trait)
  noun = nil
  case trait
  when "Knowledge"
    noun = ["dogma", "held truth","authoritative certainity","learnedness","generally agreed upon truths"].sample
  when "Actuality"
    action = ["objective reality","demonstrable reality","demonstrable existence","factuality","true state of things"].sample
  when "Consider"
    action = ["deliberation","contemplation","results of the simulations","peer-reviewed studies"].sample
  when "Pursuit"
    action = ["programmed goals","mission statement","hardwired rules","service"].sample
  when "Certainity"
    action = ["total reliablity","indisputable","sureness"].sample
  end
  return noun  
end
