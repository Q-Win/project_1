#require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './super_sports_class.rb'


class EventTest < Minitest::Test
  def test_it_exists
    event = Event.new("Curling", [20, 30])
    assert_instance_of Event, event
  end

  def test_attributes_exist
    event = Event.new("Curling", [20, 30])
    assert_equal "Curling", event.name
    assert_equal [20,30], event.ages
  end

  def test_max_age
    event = Event.new("Curling", [20, 30])
    assert_equal 30, event.max_age
  end

  def test_min_age
    event = Event.new("Curling", [20, 30])
    assert_equal 20, event.min_age
  end

  def test_average_age
    event = Event.new("Curling", [20, 30])
    assert_equal 25, event.average_age
  end

  def test_standard_deviation_age
      event = Event.new("Curling", [20, 30])
      assert_equal 5, event.standard_deviation_age
  end

  def test_array_average
      event = Event.new("Curling", [20, 30])
      assert_equal 25, event.array_average(event.ages)
  end








end

#binding.pry
