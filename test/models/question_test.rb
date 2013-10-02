require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  test "questions should not save without a title" do
    q = Question.new
    assert !q.save
  end

  test "questions should not save without a body" do
    q = Question.new
    title = "A title"
    assert !q.save
  end

  test "questions should initialize with a votes count of 0" do
    q = Question.new
    assert_equal 0, q.votes
  end

  test "vote_up! should increment the votes count of a question" do
    q = Question.new
    q.vote_up!
    assert_equal 1, q.votes
  end

  test "vote_down! should decrement the votes count of a question" do
    q = Question.new
    q.vote_down!
    assert_equal -1, q.votes
  end

  # test "the truth" do
  #   assert true
  # end
end
