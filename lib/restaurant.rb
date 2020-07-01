class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours_open)
    (@opening_time.to_i + hours_open).to_s + ":00"
  end

  def add_dish(new_dish)
    @dishes.push(new_dish)
  end

  def open_for_lunch?
    if (@opening_time.to_i - 12) <= 0
      true
    else
      false
    end
  end

  def menu_dish_names
    @dishes.each do |dish|
      dish.upcase
      @dishes.push(dish)
    end 
  end

end
