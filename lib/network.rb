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
     character_list = []
     @shows.each do |show|
       character_list << show.characters
     end
     character_list
   end

   def actors_by_show
   end

end
