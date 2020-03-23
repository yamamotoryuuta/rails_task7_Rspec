class User < ApplicationRecord
  attr_accessor :name, :age, :gender

  def initialize(name:, age:, gender:)
    self.name = name
    self.age = age
    self.gender = gender
  end

  def disp_name
    # if self.age > 19
    #   return "#{self.name}さん"
    # elsif self.age > 10
    #   return "#{self.name}君"
    # elsif self.age > 0
    #   return "#{self.name}ちゃん"
    # else
    #   return "不正な値です"
    # end

    case self.age
    when 19..100
      return gender == "man" ? "Mr.#{self.name}" : "Ms.#{self.name}"
    when 10..18
      return gender == "man" ? "#{self.name}君" : "#{self.name}さん"
    when 0..9
      return gender == "man" ? "#{self.name}くん" : "#{self.name}ちゃん"
    else
      return "不正な値です"
    end
  end
end
