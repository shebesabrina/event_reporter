class FileIO
  attr_reader :records

  def initialize(file_name)
    @contents = CSV.open file_name, headers: true, header_converters: :symbol
  end

  def load
    @records = @contents.map do |row|
      Attendees.new(row)
    end
  end
end
