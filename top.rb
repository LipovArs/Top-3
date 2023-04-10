# frozen_string_literal: true

class Top
  def self.top_three_words(text)
    words = text.downcase.scan(/[a-z']+/)
    frequency = Hash.new(0)
    words.each { |word| frequency[word] += 1 }
    frequency.sort_by { |word, count| -count }.first(3).map(&:first)
  end

  text = gets.chomp
  p top_three_words(text)
end
