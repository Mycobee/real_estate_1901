require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/room'

class RoomTest < Minitest::Test
  def test_the_room_the_length_and_the_width_attributes
    room = Room.new(:bedroom, 10, 13)
    assert_equal room.category, :bedroom
    assert_equal room.length, 10
    assert_equal room.width, 13
  end

  def test_the_area_method
    room = Room.new(:bedroom, 10, 13)

    assert_equal room.area, 130
  end


end


=begin
The following assertions do not accept a message argument:
 assert_mock
 assert_raises
 assert_silent



most often #assert is used with methods that return true or false
 assert(list.empty?, 'The list is not empty as expected.')

assert_equal is most commonly used, and ensures value is equal to the intended one
assert_equal('cba', reverse('abc'))

assert_in_delta to allow a margin of error .001 or .000001 or whatever...up to you how close needed for it to be solid
assert_in_delta 3.1415, Math::PI, 0.0001
assert_in_delta 3.1415, Math::PI, 0.00001

assert_same The #assert_same method checks whether two object arguments represent the exact same object.
assert_same(ary, ary.sort!)

#assert_nil checks wheter an object is nil.  this is most useful used w/ methods that return nil
#assert_nil(find_todos_list('Groceries'))

#assert_empty checks whether an object returns  true when #empty? is called on the object. s called on the object. If the object does not respond to #empty? or it returns a value other than true, the test fails. #assert_empty is most useful with collections and Strings.
list = []
assert_empty(list)

assert_includes
#assert_includes checks whether a collection includes a specific object. If the collection does not respond to #include? or if the method returns a value other other than true, the test fails.
list = %w(abc def xyz)
assert_includes(list, 'xyz')
Note that the assertion is named #assert_includes with an s but no ?, but it checks the #include? method which has a ? but no s. Note also that this method departs from the “expected, actual” or “value” format used by some other assertions.

assert_match
#assert_match is used when working with String objects: often, you don’t need to test an exact value, but just need to determine whether a String matches a given pattern. #assert_match uses regular expressions (regex) for those patterns.
Most often, assert_match is used with text whose content only needs to contain a few specific words, such as an error message:
assert_match(/not found/, error_message)

assert_silent
With many applications, methods, etc, the ideal situation is that no output at all is produced. To test for this situation, simply invoke the method under test in a block that gets passed to #assert_silent:
def test_has_no_output
  assert_silent { update_database }
end
If #update_database prints anything to stdout or stderr, the assertion will fail. If nothing is printed to stdout nor stderr, the assertion passes.


=end
