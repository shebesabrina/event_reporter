class Attendees

  def initialize(row)
    @attendee = row
  end

  def formatted_attendee
    {
      id: @attendee[:id].to_i,
      regdate: @attendee[:regdate],
      first_name: @attendee[:first_name],
      last_name: @attendee[:last_name],
      email_address: @attendee[:email_address],
      homephone: @attendee[:homephone],
      street: @attendee[:street],
      city: @attendee[:city],
      state: @attendee[:state],
      zipcode: @attendee[:zipcode].to_i
    }
  end

  def clean_zipcode(zipcode)
    zipcode.to_s.rjust(5, '0')[0..4]
  end
end
