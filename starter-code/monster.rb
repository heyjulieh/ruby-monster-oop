### monster.rb - run this file

# Monster class
class Monster
  attr_accessor :habitat, :threat_level
   @@count = 0

  def initialize (habitat, threat_level=:medium)
    puts "Rawr!"
    if threat_level == :low || threat_level == :medium || threat_level == :high || threat_level == :medium
      @threat_level = threat_level
    else raise "cannot create monster - invalid threat level #{threat_level} (RuntimeError)"
    @habitat = habitat
    @threat_level = threat_level
    @@count = @@count + 1
    puts "#{@@count} have spawned!"
    end
  end

  def habitat?(input)
    puts input == habitat
  end

  def self.count
   @@count
   p "#{Monster.count} monsters are now roaming the world!"
 end

end


# Zombie class

class Zombie < Monster
  attr_accessor :habitat, :threat_level
  def initialize(habitat, threat_level)
    puts "Rawr!"
    if threat_level == :low || threat_level == :medium || threat_level == :high || threat_level == :medium
      @threat_level = threat_level
    else raise "cannot create monster - invalid threat level #{threat_level} (RuntimeError)"
    @habitat = habitat
    @threat_level = "graveyard"
    @@count = @@count + 1
    puts "#{@@count} have spawned!"
    end
  end
  
  def habitat?(input)
    puts input == habitat
  end

  def self.count
   @@count
   p "#{Monster.count} monsters are now roaming the world!"
 end
end

# Werewolf class



# Flying module



# Vampire class




### "Driver" Code Area

monster = Monster.new("Sea")
p monster

rabbit = Monster.new("Clouds",:low)
# Rawr
p rabbit
# => "Cave of Caerbannog"
dalek = Monster.new("Cave of Caerbannog",:high)
p dalek
# => :high
yeti = Monster.new ("Tundra")
p yeti.habitat
yeti.habitat?("Swamp")
# => false
yeti.habitat?("Tundra")

rubber_ducky = Monster.new("Forest", :friendly)

rob = Zombie.new
puts rob.habitat
# "graveyard"
puts rob.threat_level
# :medium
rob.name = "Rob Zombie"
puts rob.name
# "Rob Zombie"
