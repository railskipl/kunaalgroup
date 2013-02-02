module HomeHelper
  
  def get_month(value)
    a=value
    case a
    when 1
        return "Jan"
    when 2
        return "Feb"
      when 3
        return "March"
    when 4
        return "April"
    when 5
        return "May"
    when 6
        return "June"       
      when 7
        return "July"
    when 8
        return "Aug"
      when 9
        return "Sept"
    when 10
        return "Oct"
      when 11
        return "Nov"
    when 12
        return "Dec"   

    else
        puts "You gave me #{a} -- I have no idea what to do with that."
    end
  end
  
end
