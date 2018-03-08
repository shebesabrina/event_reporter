require './lib/attendees'
require 'csv'
require 'pry'

class Que
  attr_reader :results

  def initialize(file_name = 'small_sample.csv')
    @results = []
    @contents = CSV.open file_name, headers: true, header_converters: :symbol
  end

  def load
    @results = @contents.map do |row|
      Attendees.new(row).formatted_attendee
    end
  end

  def count
    results.length
  end

  def clear
    results.clear
  end

  def print_data(results)
    # binding.pry
    puts "LAST NAME  FIRST NAME  EMAIL  ZIPCODE  CITY  STATE  ADDRESS  PHONE  DISTRICT"
    puts "-" * 80 + "\n"

    printed = results.map do |attendee|
      attendee[:last_name] + "\t" +
      attendee[:first_name] + "\t" +
      attendee[:email_address] + "\t" +
      attendee[:zipcode].to_s + "\t" +
      attendee[:city] + "\t" +
      attendee[:state] + "\t" +
      attendee[:street] + "\t" +
      attendee[:homephone] + "\n"
    end.join(" ")
    puts printed
    # binding.pry
  end
end

new_que = Que.new
results = new_que.load
new_que.print_data(results)
