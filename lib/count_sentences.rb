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
    count=0
    #I kind-of cheated. Instead of splitting the sentence by .?!
    #I split the sentence by whitespace then counted the number of
    #"words" ending in . or ? or !
    #If you followed the lab instructions, you'd end up with an
    #array of "sentences" without ending punctuation so you
    #couldn't even use the three methods created above.
    pieces=self.split#(" ")
    pieces.each do |word|
      if word.sentence? || word.question? || word.exclamation?
        count+=1
      end
    end
    count
  end
end
