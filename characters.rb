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
#Actuality - only cares about 'objective reality', does not care about "feelings" and subjectivity

@motivation = ["Consider", "Pursuit"]
#Consider - will latch onto a goal and refuse to let it go!
#Pursuit - Drive to go after a goal or a hated enemy 

@methodology = ["Certainty", "Proaction"]
#Certainity - is 100% sure his action will lead to the correct outcome
#Proaction - a self-starter who will take action...even if he doesn't have all the facts!

@evaluation = ["Proven", "Effect"]
#Proven: believes that his ideas are correct because they have been shown to be correct multiple times.
#Effect: cares about how to solve the problem, and does not worry about what caused the problem in the first place!

end

end
