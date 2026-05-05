defmodule ApexMoveUciMarkTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 65, capacity: 70, latency: 25, risk: 10, weight: 12}
    assert ApexMoveUciMark.score(signal_case_1) == 121
    assert ApexMoveUciMark.classify(signal_case_1) == "review"
    signal_case_2 = %{demand: 59, capacity: 78, latency: 16, risk: 13, weight: 12}
    assert ApexMoveUciMark.score(signal_case_2) == 132
    assert ApexMoveUciMark.classify(signal_case_2) == "review"
    signal_case_3 = %{demand: 87, capacity: 102, latency: 19, risk: 13, weight: 13}
    assert ApexMoveUciMark.score(signal_case_3) == 206
    assert ApexMoveUciMark.classify(signal_case_3) == "accept"
  end
end
