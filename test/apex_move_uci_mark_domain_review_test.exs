defmodule ApexMoveUciMark.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 53, slack: 34, drag: 21, confidence: 65}
    assert ApexMoveUciMark.DomainReview.score(item) == 142
    assert ApexMoveUciMark.DomainReview.lane(item) == "ship"
  end
end
