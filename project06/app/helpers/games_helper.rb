module GamesHelper
  
  def name_for_game(g)
    if (current_user)
      if (g.user == current_user)
        n = "me"
      else
        n = g.user.name
      end
    else
      n = g.user.name
    end
    return n
  end
  
end
