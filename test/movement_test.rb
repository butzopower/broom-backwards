require 'test/unit'
class MovementTest < Test::Unit::TestCase

  def test_directions_exist
    %w(north south east west).each do |dir|
      assert respond_to?(dir.to_sym), "No response to direction #{dir}."
    end
  end

  def test_method_go_aliases_method_move
    assert method(:go) == method(:move)
  end

end
