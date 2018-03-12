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

  def test_it_can_print
    skip
    attendee_1 = ({
    id:"1",
    regdate:"11/13/08 16:40",
    first_name:"Eli",
    last_name:"Zielke",
    email_address:"jbrabeth.buckley@jumpstartlab.com",
    homephone:"(858)-405-3000",
    street:"3024 Cranbrook Ct",
    city:"La Jolla",
    state:"CA",
    zipcode:"92037"
    })
    # attendee_2 = Attendees.new({
    # id:"2",
    # regdate:"11/12/08 13:30",
    # first_name:"Sarah",
    # last_name:"Xx",
    # email_address:"lqrm4462@jumpstartlab.com",
    # homephone:"(941)979-2000",
    # street:"4175 3rd Street North",
    # city:"Saint Petersburg",
    # state:"FL",
    # zipcode:"33703"
    # })
    header = "LAST NAME  FIRST NAME  EMAIL  ZIPCODE  CITY  STATE  ADDRESS  PHONE  DISTRICT" + "\n" +
              "--------------------------------------------------------------------------------"
    attendee = "Zielke\tEli\tjbrabeth.buckley@jumpstartlab.com\t92037\tLa Jolla\tCA\t3024 Cranbrook Ct\t(858)-405-3000\t",
    "Xx\tSarah\tlqrm4462@jumpstartlab.com\t33703\tSaint Petersburg\tFL\t4175 3rd Street North\t(941)979-2000\t"
    data = [attendee_1, attendee_2]
    @que.load
    assert_equal data, new_que.print_data(data)
  end
  def test_it_can_find_attributes
    attendee = Attendees.new({
    id:"1",
    regdate:"11/13/08 16:40",
    first_name:"Eli",
    last_name:"Zielke",
    email_address:"jbrabeth.buckley@jumpstartlab.com",
    homephone:"(858)-405-3000",
    street:"3024 Cranbrook Ct",
    city:"La Jolla",
    state:"CA",
    zipcode: "92037"
    })
    @que.current_records << attendee


    assert_equal [attendee], @que.find("zipcode", "92037")
  end

  def test_print_by_attribute
    skip
    attendee_1 = Attendees.new({
    id:"1",
    regdate:"11/13/08 16:40",
    first_name:"Eli",
    last_name:"Zielke",
    email_address:"jbrabeth.buckley@jumpstartlab.com",
    homephone:"(858)-405-3000",
    street:"3024 Cranbrook Ct",
    city:"La Jolla",
    state:"CA",
    zipcode:"92037"
    })

    assert_equal "92037", @que.print_by_attribute
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
