require './lib/que'
require './test/test_helper'
require 'pry'

class QueTest < Minitest::Test
  def setup
    @que = Que.new
  end

  def test_it_exists
    assert_instance_of Que, @que
  end

  def test_load_file

    assert_equal [], @que.results
  end

  def test_help_commands
    skip
    result = help_commands
    assert_equal result, @que.help
  end

  def test_count_method

    assert_equal 0, @que.count
  end

  def test_clear_method

    assert_equal [], @que.clear
  end

  def test_district_method
    skip
    #if @que has < 10 need to default to Sunlight API
    result = Sunlight API
    assert_equal result, @que.district
  end

  def test_print_method
      attendees = [ Attendees.new({
      id:"3",
      regdate:"11/12/08 13:30",
      first_name:"Sarah",
      last_name:"Xx",
      email_address:"lqrm4462@jumpstartlab.com",
      homephone:"(941)979-2000",
      street:"4175 3rd Street North",
      city:"Saint Petersburg",
      state:"FL",
      zipcode:"33703"
      }),
       Attendees.new({
      id:"3",
      regdate:"11/12/08 13:30",
      first_name:"Sarah",
      last_name:"Xx",
      email_address:"lqrm4462@jumpstartlab.com",
      homephone:"(941)979-2000",
      street:"4175 3rd Street North",
      city:"Saint Petersburg",
      state:"FL",
      zipcode:"33703"
      }) ]
      @que.load(attendees)
      # binding.pry
    result = "LAST NAME  FIRST NAME  EMAIL  ZIPCODE  CITY  STATE  ADDRESS  PHONE  DISTRICT"
    assert_equal result, @que.print(attendees)
    # binding.pry
  end

  def test_print_by_attribute
    skip
    assert_equal ZIPCODE, @que.print_by_attribute
  end

  def test_save_to_file_method
    skip
    assert_equal file_name, @que.save
  end

  def test_export_method_in_html
    skip
    assert_equal
  end
end
