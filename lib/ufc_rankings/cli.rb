class UfcRankings::CLI
  @@division_titles = ["Pound for Pound", "Flyweight", "Bantamweight", "Featherweight", "Lightweight", "Welterweight", "Middleweight", "Light Heavyweight", "Heavyweight", "Women's Strawweight", "Women's Bantamweight"]
  def call
    UfcRankings::Rankings.scrape_rankings
    welcome
    menu
  end

  def welcome
    puts "Welcome to the UFC Rankings CLI!"
    puts ""
  end

  def menu
    puts "Please select the weight class rankings you'd like to see from the list below by entering the number assigned to each class."
    puts ""
    list_classes
    input = gets.strip
    show_rankings(input.to_i)
    puts ""
    puts ""
    puts "press 1 to see more rankings, 2 to exit."
    input = gets.strip.to_i
    if input == 1 
      menu
    else 
      exit
    end
  end

  def list_classes 
    0.upto(10) {|i| puts "#{i+1}.#{@@division_titles[i]}"}
  end
   
  def show_rankings(num)
    index = num - 1
    puts @@division_titles[index]
    UfcRankings::Rankings.divisions[index].each_with_index do |fighter, i|
      if i == 0
    puts "Champion: #{fighter}"  
      else 
    puts "#{i+1}. #{fighter}"
    end
  end
  end

  def exit
    puts "Come back soon to see who's climbing the ladder of Ultimate Fighters!"
  end

end
