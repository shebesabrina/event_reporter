require './lib/queue'
require './test/test_helper'

class QueueTest < Minitest::Test
  def test_it_exists
    queue = Queue.new
    assert_instance_of Queue, queue
  end

  def test_load_file
    skip
    queue = Queue.new
    assert_equal [], queue.results
  end

  def test_help_commands
    skip
    queue = Queue.new
    result = help_commands
    assert_equal result, queue.help
  end

  def test_count_method
    skip
    queue = Queue.new
    assert_equal 1, queue.count
  end

  def test_clear_method
    skip
    queue = Queue.new
    #not sure if I'm testing an int or empty array
    assert_equal 0, queue.clear
  end

  def test_district_method
    skip
    queue = Queue.new
    #if queue has < 10 need to default to Sunlight API
    result = Sunlight API
    assert_equal result, queue.district
  end

  def test_print_method
    skip
    queue = Queue.new
    result = LAST NAME  FIRST NAME  EMAIL  ZIPCODE  CITY  STATE  ADDRESS  PHONE  DISTRICT
    assert_equal result, queue.print

  def test_print_by_attribute
    skip
    queue = Queue.new
    assert_equal ZIPCODE, queue.print_by_attribute
  end

  def test_save_to_file_method
    skip
    queue = Queue.new
    assert_equal file_name, queue.save
  end

  def test_export_method_in_html
    skip
    queue = Queue.new
    assert_equal
  end

end
