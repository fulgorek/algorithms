#!/usr/bin/ruby

def normalize(text)
	text.gsub!(/([:.,;?!])/, '\1 ')
	text.gsub!(/(?<=\W)\s+(?=\W)/, '')
	text.gsub!(/([a-z])((?:[^.?!]|\.(?=[a-z]))*)/i) { $1.upcase + $2.rstrip }
	text.strip
end

# test cases
questions = []
questions[0] = "first, solve the problem.then, write the code.", "First, solve the problem. Then, write the code."
questions[1] = "hello. how are you today? great! i'm fine too.", "Hello. How are you today? Great! I'm fine too."
questions[2] = "do.or do not.   there is no try.", "Do. Or do not. There is no try."
questions[3] = "the house is on fire!?run!", "The house is on fire!? Run!"
questions[4] = "the conference has people who have come from Moscow,Idaho;Paris,Texas;London,Ohio; and other places as well.", "The conference has people who have come from Moscow, Idaho; Paris, Texas; London, Ohio; and other places as well."

questions.each do |question|
 p normalize(question[0]) == question[1]
end
