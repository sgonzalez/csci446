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
  
  def rating_for_game(g)
    if (g.rating == "")
      n = "Unrated"
    else
      n = g.rating
    end
    return n
  end
  
end
