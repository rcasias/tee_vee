class Character
  attr_reader :name,
              :actor,
              :salary

  def initialize(character_data)

    @name   = character_data[:name]
    @actor  = character_data[:actor]
    @salary = character_data[:salary]
  end

  
end
