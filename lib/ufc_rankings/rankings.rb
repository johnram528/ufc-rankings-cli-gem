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
  @@ womens_bantam = []


  def self.scrape_rankings
    doc = Nokogiri::HTML(open("http://www.ufc.com/rankings"))
    rankings = doc.css(".ranking-list")
    fly = rankings[1].css("a").children.each {|fighter| @@fly << fighter}
    @@champions << fly[0]
  end

  def self.p4p
    puts "1 Jon Jones "
    puts "2 Demetrious Johnson "
    puts "3 Luke Rockhold "
    puts "4 Fabricio Werdum "
    puts "5 Dominick Cruz "
    puts "6 Rafael Dos Anjos "
    puts "7 Robbie Lawler "
    puts "8 Conor McGregor "
    puts "9 Daniel Cormier "
    puts "10  Jose Aldo "
    puts "11  Chris Weidman "
    puts "12  Frankie Edgar "
    puts "13  TJ Dillashaw "
    puts "14  Joanna Jedrzejczyk "
    puts "15  Miesha Tate "
  end

  def self.fly 
   puts "Champion: #{@@champions[0]}"
   @@fly.shift!
   @@fly.each_with_index {|fighter, i|puts "#{i+1}. fighter"}
  end

  def self.bantam
    puts "Champion : Dominick Cruz"
    puts "1 TJ Dillashaw "
    puts "2 Renan Barao "
    puts "3 Urijah Faber "
    puts "4 Aljamain Sterling "
    puts "5 Raphael Assuncao "
    puts "6 Michael McDonald "
    puts "7 Thomas Almeida "
    puts "8 Bryan Caraway "
    puts "9 Takeya Mizugaki "
    puts "10  John Dodson "
    puts "11  Johnny Eduardo "
    puts "12  John Lineker "
    puts "13  Frankie Saenz "
    puts "14  Jimmie Rivera "
    puts "15  Eddie Wineland "
  end

  def self.feather
    puts "Champion : Conor McGregor"
    puts "1 Jose Aldo "
    puts "2 Frankie Edgar "
    puts "3 Chad Mendes "
    puts "4 Max Holloway "
    puts "5 Ricardo Lamas "
    puts "6 Cub Swanson "
    puts "7 Charles Oliveira "
    puts "8 Dennis Bermudez "
    puts "9 Jeremy Stephens "
    puts "10  Hacran Dias "
    puts "11  Darren Elkins "
    puts "12  Brian Ortega "
    puts "13  Tatsuya Kawajiri "
    puts "14  Yair Rodriguez "
    puts "15  Mirsad Bektic "
 end

 def self.light
 end

 def self.welter
 end 

 def self.middle
 end

 def self.light_heavy
 end

 def self.heavy
 end

 def self.womens_straw
 end

 def self.womens_bantam
 end
end