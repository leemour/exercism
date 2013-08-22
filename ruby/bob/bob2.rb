class Bob
  def hey(phrase)
    @phrase = phrase.strip
    answer = silence? || shouting? || question?
    answer ||= 'Whatever.'
  end

  def silence?
    'Fine. Be that way!' if @phrase.empty?
  end
  def shouting?
    'Woah, chill out!' if @phrase == @phrase.upcase
  end
  def question?
    'Sure.' if @phrase.end_with? '?'
  end
end