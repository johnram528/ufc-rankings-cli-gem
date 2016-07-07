class UfcRankings::Rankings

  @@divisions = {}

  0.upto(10) {|i| @@divisions[i] = Array.new}

  def self.scrape_rankings
    doc = Nokogiri::HTML(open("http://www.ufc.com/rankings"))
    rankings = doc.css(".ranking-list") 
    0.upto(10) {|i| rankings[i].css("a").children.each {|fighter| @@divisions[i] << fighter.text.strip.split.join(" ")}}
  end

  def self.p4p
    @@p4p.each_with_index {|fighter, i|puts "#{i+1}. #{fighter}"}
  end


  def self.divisions
    @@divisions
  end

end