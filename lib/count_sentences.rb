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

    #Solution based on lab Instructions
    #When you split by .?! you end up with an array of "sentences"
    #without ending punctuation so you
    #couldn't even use the three methods created above.
    #Then why would you even have created those three methods?

    #pieces=self.split(/[\.\?\!]/)
    #pieces.delete_if {|word| word==""}
    #pieces.count

    #############################################################

    #My way: Instead of splitting the sentence by .?!
    #I split the string by whitespace then counted the number of
    #"words" ending in . or ? or !

    count=0
    self.split.each {|word| count+=1 if word.sentence? || word.question? || word.exclamation?}
    count

    #pieces=self.split#(" ")
    #pieces.each {|word| count+=1 if word.sentence? || word.question? || word.exclamation?}
    #pieces.each do |word|
        #count+=1 if word.sentence? || word.question? || word.exclamation?
    #end

  end
end
