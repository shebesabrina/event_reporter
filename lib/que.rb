require './lib/attendees'
require 'pry'

class Que
  attr_reader :results

  def initialize
    @results = []
  end

  def load(results)
    @results << results
  end

  def count
    results.length
  end

  def clear
    results.clear
  end

  def print(results)
    # binding.pry
    puts "LAST NAME  FIRST NAME  EMAIL  ZIPCODE  CITY  STATE  ADDRESS  PHONE  DISTRICT"
    puts "-" * 80

      results.map do |attendee|
      attendee.last_name + "\t" +
      attendee.first_name + "\t" +
      attendee.email_address + "\t" +
      attendee.zipcode.to_s + "\t" +
      attendee.city + "\t" +
      attendee.state + "\t" +
      attendee.street + "\t" +
      attendee.homephone + "\t"
    end
  end
end
