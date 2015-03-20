class Character
attr_accessor :purpose, :motivation, :methodology, :evaluation

def initialize
set_up_traits
end

end

class Protagonist < Character
private
def set_up_traits
  @purpose = ["Knowledge", "Actuality"]
  #Knowledge - dogmatism and slavish adherence to "orthodoxy"
  #Actuality - knows how the world really is
  
  @motivation = ["Consider", "Pursuit"]
  #Consider - will latch onto a goal and refuse to let it go!
  #Pursuit - drive to go after a goal or a hated enemy 
  
  @methodology = ["Certainty", "Proaction"]
  #Certainity - is 100% sure his action will lead to the correct outcome
  #Proaction - a self-starter who will take action...even without all the facts!
  
  @evaluation = ["Proven", "Effect"]
  #Proven - believes that his ideas are correct because they have been shown to be correct multiple times.
  #Effect - cares about how to solve the problem, and does not worry about what caused the problem in the first place!
  end
end

class Antagonist < Character
private
def set_up_traits
  @purpose = ["Thought", "Perception"]
  #Thought - Free-thinker, able to consider an issue from multiple perspectives
  #Perception - knows only what the world SEEMS to be
  
  @motivation = ["Reconsider", "Avoid"]
  #Reconsider - will periodically reassess whether the current goal is the correct course of action
  #Avoid - desires to escape whoever is chasing him (usually the Protagonist)
  
  @methodology = ["Potentiality", "Reaction"]
  #Potentiality - is unsure whether his action will lead to the correct outcome, but will still take risks when necessary
  #Reaction - will wait until a crisis occurs, and then responds accordingly 
  
  @evaluation = ["Unproven, Cause"]
  #Unproven - believes that his ideas may still be actually wrong, no matter how many previous tests are done
  #Cause - cares about addressing the root causes of the problem, and ignores the actual problem.
end
end
