require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences

    arr = self.split
    count = 0
    #binding.pry
    arr.each do |word|
      if word.sentence? || word.question? || word.exclamation?
        count += 1
      end
    end
    count
    #binding.pry

  end
end