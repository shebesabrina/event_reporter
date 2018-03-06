require './lib/attendees'
require './test/test_helper'
require 'csv'
require 'pry'

class AttendeesTest < Minitest::Test
  def setup
    @contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol
        @contents.each do |row|
        end
    @attendees = Attendees.new({
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
      })
  end

  def test_it_exists
    assert_instance_of Attendees, @attendees
  end

  def test_it_has_attributes
    assert_equal 3, @attendees.id
    assert_equal "Sarah", @attendees.first_name
    assert_equal "Xx", @attendees.last_name
    assert_equal 33703, @attendees.zipcode
    assert_equal "Saint Petersburg", @attendees.city
    assert_equal "FL", @attendees.state
  end
end
