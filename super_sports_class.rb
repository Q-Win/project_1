require 'pry'
require 'minitest/pride'

class Event

  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age

    sum = 0
    amount_of_entries = @ages.length
    count = amount_of_entries - 1

    for num in 0..count do
      sum = sum + @ages[num].to_f
    end

    average = sum/amount_of_entries
    return average
  end

  def standard_deviation_age

    average2 = average_age


    new_arr = []

    amount_of_entries = @ages.length
    count = amount_of_entries - 1

    for num in 0..count do
      new_entry = @ages[num] - average2
      new_entry = new_entry ** 2
      new_arr.push(new_entry)

    end



    stand_dev = array_average(new_arr)
    stand_dev = stand_dev ** 0.5
    return stand_dev.round(2)
  end

  def array_average(arr)

    sum = 0
    amount_of_entries = arr.length
    count = amount_of_entries - 1

    for num in 0..count do
      sum = sum + arr[num].to_f
    end

    average = sum/amount_of_entries
    return average

  end

end

 #binding.pry
