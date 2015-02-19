require 'helper'

class MatcherTest < ActiveSupport::TestCase
  test "score with recurring segments" do
    assert_score 50, 23556355
    assert_score 140, 20402040
  end

  test "even sized number" do
    assert_score 20, 21436587
  end

  test "even segments" do
    assert_score 80, 10203040
  end

  test "golden" do
    assert Handy::Matcher.new(22804080).golden?
  end

  private
    def assert_score(score, number)
      assert_equal score, Handy::Matcher.new(number).score
    end
end
