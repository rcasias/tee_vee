class Network
    attr_reader :name,
                :shows

   def initialize(name)
     @name = name
     @shows = []
   end

   def add_show(show)
     @shows << show
   end

   def main_characters
     main_character = []
     @shows.map do |show|
       show.map do |character|
         character.name
       end
     end
     character
   end

   def actors_by_show
   end

end
