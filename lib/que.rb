require './lib/attendees'
require './lib/file_io'
require 'csv'
require 'pry'

class Que
  attr_reader :results, :current_records, :fileIO


  def initialize
    @results = []
    @current_records = []
  end

  def load(filename='small_sample.csv')
    @fileIO = FileIO.new(filename)
    @fileIO.load
    @current_records = @fileIO.records
  end

  def find(attribute, criteria)
    @results = @current_records.select do |attendee|
      if attendee.respond_to?(attribute.to_sym)
        attendee.send(attribute.to_sym) == criteria
      end
    end
  end

  def count
    results.length
  end

  def clear
    results.clear
  end
end


  # def print_data(results)
  #   # binding.pry
  #   puts "LAST NAME  FIRST NAME  EMAIL  ZIPCODE  CITY  STATE  ADDRESS  PHONE  DISTRICT"
  #   puts "-" * 80 + "\n"
  #
  #   # binding.pry
  #   printed = results.map do |attendee|
  #     @attendee[last_name] + "\t" +
  #     @attendee[first_name] + "\t" +
  #     @attendee[email_address] + "\t" +
  #     @attendee[zipcode].to_s + "\t" +
  #     @attendee[city] + "\t" +
  #     @attendee[state] + "\t" +
  #     @attendee[street] + "\t" +
  #     @attendee[homephone] + "\n"
  #   end.join(" ")
  #   puts printed.to_a
  # end
#
# new_que = Que.new
# results = new_que.load
# #user information => symbol instead of string.
# # sorted_results = results.sort_by { |r| r[user_given_key] }
# new_que.print_data(results)
