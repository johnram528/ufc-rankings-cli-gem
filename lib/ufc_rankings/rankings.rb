class UfcRankings::Rankings

  @@champions = []
  @@p4p = []
  @@fly = []
  @@bantam = []
  @@feather = []
  @@light = []
  @@welter = []
  @@middle = []
  @@light_heavy = []
  @@heavy = []
  @@womens_straw = []
  @@womens_bantam = []


  def self.scrape_rankings
    doc = Nokogiri::HTML(open("http://www.ufc.com/rankings"))
    rankings = doc.css(".ranking-list")
    pound_for_pound = rankings[0].css("a").children.each {|fighter| @@p4p << fighter.text.strip.split.join(" ")}
    rankings[1].css("a").children.each {|fighter| @@fly << fighter.text.strip.split.join(" ")}
    rankings[2].css("a").children.each {|fighter| @@bantam << fighter.text.strip.split.join(" ")}
    rankings[3].css("a").children.each {|fighter| @@feather << fighter.text.strip.split.join(" ")}
    rankings[4].css("a").children.each {|fighter| @@light << fighter.text.strip.split.join(" ")}
    rankings[5].css("a").children.each {|fighter| @@welter << fighter.text.strip.split.join(" ")}
    rankings[6].css("a").children.each {|fighter| @@middle << fighter.text.strip.split.join(" ")}
    rankings[7].css("a").children.each {|fighter| @@light_heavy << fighter.text.strip.split.join(" ")}
    rankings[8].css("a").children.each {|fighter| @@heavy << fighter.text.strip.split.join(" ")}
    rankings[9].css("a").children.each {|fighter| @@womens_straw << fighter.text.strip.split.join(" ")}
    rankings[10].css("a").children.each {|fighter| @@womens_bantam << fighter.text.strip.split.join(" ")}
    @@champions << @@fly[0] << @@bantam[0] << @@feather[0] << @@light[0] << @@welter[0] << @@middle[0] << @@light_heavy[0] << @@heavy[0] << @@womens_straw[0] << @@womens_bantam[0] 


  end

  def self.p4p
    @@p4p.each_with_index {|fighter, i|puts "#{i+1}. #{fighter}"}
  end

  def self.fly 
   puts "Champion: #{@@champions[0]}"
   @@fly.shift
   @@fly.each_with_index {|fighter, i|puts "#{i+1}. #{fighter}"}
  end

  def self.bantam
   puts "Champion: #{@@champions[1]}"
   @@bantam.shift
   @@bantam.each_with_index {|fighter, i|puts "#{i+1}. #{fighter}"}
  end

  def self.feather
   puts "Champion: #{@@champions[2]}"
   @@feather.shift
   @@feather.each_with_index {|fighter, i|puts "#{i+1}. #{fighter}"}
 end

 def self.light
   puts "Champion: #{@@champions[3]}"
   @@light.shift
   @@light.each_with_index {|fighter, i|puts "#{i+1}. #{fighter}"}
 end

 def self.welter
   puts "Champion: #{@@champions[4]}"
   @@welter.shift
   @@welter.each_with_index {|fighter, i|puts "#{i+1}. #{fighter}"}
 end 

 def self.middle
   puts "Champion: #{@@champions[5]}"
   @@middle.shift
   @@middle.each_with_index {|fighter, i|puts "#{i+1}. #{fighter}"}
 end

 def self.light_heavy
   puts "Champion: #{@@champions[6]}"
   @@light_heavy.shift
   @@light_heavy.each_with_index {|fighter, i|puts "#{i+1}. #{fighter}"}
 end

 def self.heavy
   puts "Champion: #{@@champions[7]}"
   @@heavy.shift
   @@heavy.each_with_index {|fighter, i|puts "#{i+1}. #{fighter}"}
 end

 def self.womens_straw
   puts "Champion: #{@@champions[8]}"
   @@womens_straw.shift
   @@womens_straw.each_with_index {|fighter, i|puts "#{i+1}. #{fighter}"}
 end

 def self.womens_bantam
   puts "Champion: #{@@champions[9]}"
   @@womens_bantam.shift
   @@womens_bantam.each_with_index {|fighter, i|puts "#{i+1}. #{fighter}"}
 end
end