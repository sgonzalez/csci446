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
  
  def percent_rated()
    n = Game.count(:all, :conditions => {:user_id => current_user.id, :rating => ''})#.where(:user_id => current_user.id, :rating => "").count
    d = Game.count(:all, :conditions => {:user_id => current_user.id})
    return (1-(Float(n)/d))*100
  end
  
end
