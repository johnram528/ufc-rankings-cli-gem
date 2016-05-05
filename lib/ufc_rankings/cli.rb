class UfcRankings::CLI
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
    puts "Please select the weight class rankings you'd like to see from the list below by entering the number assigned to each class. ."
    puts ""
    list_classes
    input = gets.strip
    show_rankings(input.to_i)
    puts "press 1 to see more rankings, 2 to exit."
    input = gets.strip.to_i
    if input == 1 
      menu
    else 
      exit
    end
  end

  def list_classes 
    puts "1.Pound for Pound "
    puts "2.Flyweight "
    puts "3.Bantamweight"
    puts "4.Featherweight "
    puts "5.Lightweight "
    puts "6.Welterweight "
    puts "7.Middleweight "
    puts "8.Light Heavyweight "
    puts "9.Heavyweight "
    puts "10.Women's Strawweight "
    puts "11.Women's Bantamweight"
    puts ""
  end
    
  def show_rankings(num)
    case num
    when 1
      puts "Pound for Pound Rankings"
      UfcRankings::Rankings.p4p
    when 2
      puts "Flyweight Rankings"
      UfcRankings::Rankings.fly
    when 3
      puts "Bantameweight Rankings"
      UfcRankings::Rankings.bantam
    when 4
      puts "Featherweight Rankings"
      UfcRankings::Rankings.feather
    when 5
      puts "Lightweight Rankings"
      UfcRankings::Rankings.light
    when 6
      puts "Welterweight Rankings"
      UfcRankings::Rankings.welter
    when 7
      puts "Middleweight Rankings"
      UfcRankings::Rankings.middle
    when 8
      puts "Light Heavyweight Rankings"
      UfcRankings::Rankings.light_heavy
    when 9 
      puts "Heavyweight Rankings"
      UfcRankings::Rankings.heavy
    when 10
      puts "Women's Strawweight"
      UfcRankings::Rankings.womens_straw
    when 11
      puts "Women's Bantamweight"
      UfcRankings::Rankings.womens_bantam
    end
  end

  def exit
    puts "Come back soon to see who's climbing the ladder of Ultimate Fighters!"
  end

end
