require 'pry'
class Attendees
  attr_reader :id,
              :regdate,
              :first_name,
              :last_name,
              :email_address,
              :homephone,
              :street,
              :city,
              :state,
              :zipcode

  def initialize(row)
    @id = row[:id].to_i,
    @regdate = row[:regdate],
    @first_name = row[:first_name],
    @last_name = row[:last_name],
    @email_address = row[:email_address],
    @homephone = row[:homephone],
    @street = row[:street],
    @city = row[:city],
    @state = row[:state],
    @zipcode = row[:zipcode].to_s.rjust(5, '0')[0..4]
  end

end
