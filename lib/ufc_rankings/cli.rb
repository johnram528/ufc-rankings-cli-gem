class UfcRankings::CLI
  def call
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
      "Bye" 
      exit
    end
  end

  def list_classes 
    puts "1.Pound for Pound, 2.Flyweight, 3.Bantamweight, 4.Featherweight, 5.Lightweight, 6. Welterweight, 7.Middleweight, 8.Light Heavyweight, 9.Heavyweight, 10.Women's Strawweight, 11. "
  end
    
  def show_rankings(num)
    case num
    when 1
      UfcRankings::Fighters.p4p
    when 2
      UfcRankings::Fighters.fly
    when 3
      UfcRankings::Fighters.bantam
    when 4
      UfcRankings::Fighters.feather
    end
  end

  def exit
    puts "Come back soon to see who's climbing the ladder of Ultimate Fighters!"
  end

end
