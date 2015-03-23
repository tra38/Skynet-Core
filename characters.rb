class Character
attr_reader :purpose, :motivation, :methodology, :evaluation, :enemy
end

class Protagonist < Character #the "Hero", the guy who wants stuff done
def initialize
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
  
  @enemy = Antagonist
  end
end

class Antagonist < Character #the "Villian", the guy standing in the way of the Protagonist
def initialize
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
  
  @enemy = Protagonist
end
end

class Contagonist < Character #The Tempter, out to convince others to join the "dark side"
def initialize
  @purpose = ["Inequity", "Speculation"]
  #Inequity - promotes unfairness or imbalance
  #Speculation - prepares for all potential and possible ouctomes
  
  @motivation = ["Temptation", "Hinder"]
  #Temptation - embrace immedidate benefits, without worrying about the future consequences
  #Hinder - undermining somebody else's plans, either intentionally or by accident
  
  @methodology = ["Production", "Reevaluation"]
  #Production - determines what the current situation is by ruling out what explainations are "impossible"
  #Reevaluation - continually reexamines and reinterprets the current situation
  
  @evaluation = ["Determination","Unending"]
  #Determination - uses inferences to draws conclusions
  #Unending - believes that Society can live forever and will live forever
  
  @enemy = Guardian
end
end

class Guardian < Character #The Moral Conscience, out to guide others to the "light side"
def initialize
  @purpose = ["Equity", "Projection"]
  #Equity - promotes fairness and balance
  #Projection - prepares for the most likely and probable outcomes
  
  @motivation = ["Conscience", "Help"]
  #Conscience - forgoing immedidate benefits, because of future consequences
  #Help - helping somebody else's plans, either intentionally or by accident
  
  @methodology = ["Reduction", "Evaluation"]
  #Reduction - determines what the current situation is by weighing odds carefully and choosing the most likely explaination
  #Evaluation - interprets the current situation to determine its meaning, and then sticks to that interpertion
  #forever.
  
  @evaluation = ["Expectation", "Ending"]
  #Expectation - anticipiates what is going to happen in the future
  #Ending - believes that Society will end and is concerned about the aftermath
  
  @enemy = Contagonist
end
end
