class Show
  attr_reader :name,
              :creator,
              :characters

  def initialize(name, creator, characters)
    @name       = name
    @creator    = creator
    @characters = characters
  end


  def total_salary
    total_salary = 0
    characters.each do |character|
      total_salary += character.salary
    end
    total_salary
  end

  def highest_paid_actor
    characters.each do |character|
      if character.salary > character.salary
        character.name
      end
    end
    character.name
  end

  def actors
    characters.each do |character|
      character.actor
    end
  end




end
