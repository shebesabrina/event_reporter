require 'csv'

  CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol
