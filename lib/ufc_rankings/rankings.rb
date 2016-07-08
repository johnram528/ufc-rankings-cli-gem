class UfcRankings::Rankings
  @@division_names = ["Pound for Pound", "Flyweight", "Bantamweight", "Featherweight", "Lightweight", "Welterweight", "Middleweight", "Light Heavyweight", "Heavyweight", "Women's Strawweight", "Women's Bantamweight"]
  @@divisions = {}

  @@division_names.each_index {|i| @@divisions[i] = Array.new}

  def self.scrape_rankings
    doc = Nokogiri::HTML(open("http://www.ufc.com/rankings"))
    rankings = doc.css(".ranking-list") 
    @@division_names.each_index {|i| rankings[i].css("a").children.each {|fighter| @@divisions[i] << fighter.text.strip.split.join(" ")}}
    create_fighters
  end

  def self.create_fighters
    @@divisions.each {|k, v| v.each_with_index {|name,ranking| fighter = UfcRankings::Fighters.new(name, k, ranking)}}
  end
  def self.divisions
    @@divisions
  end

  def self.division_names
    @@division_names
  end
end
