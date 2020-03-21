class Kitten < ApplicationRecord
    validates_presence_of :name, :message => "is blank - Come on, all kittens have names!"
    validates_presence_of :age, :message => "is blank - How do you not know the age of your kitten?"
    validates_presence_of :cuteness, :message => "is blank - How dare you not tell us how cute your kitten is?"
    validates_presence_of :softness, :message => "is blank - We need to know how soft your kitten is (for research purposes)!"

end
