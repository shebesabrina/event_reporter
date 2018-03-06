require './event_manager'

input = gets.chomp
command = input.split(' ')[0]

if command == 'load'
  file = input.split(' ')[1]
  contents = CSV.open file, headers: true, header_converters: :symbol
  event_manager = EventManager.new(contents)
  event_manager.format_contents
elsif command == 'help'
  puts 'help'
elsif command == 'find'
  header = input.split(' ')[1]
  query = input.split(' ')[2]
  find_contents(header, query)
  event_manager = EventManager.new(contents)

elsif command == 'count'
  # counts what's in the queue
elsif command == 'queue count'
  return 0
end
