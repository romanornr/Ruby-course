def Not_attempted_participants(quiz)
  count = 0
  quiz.each do |participant|
    if participant == 0
      count += 1
    end
  end
  puts "#{count} participants did not attemtped the quiz"
end

quiz = [0,0,0,1,0,0,1,1,0,1]

Not_attempted_participants(quiz)