defmodule ApexMoveUciMark.DomainReview do
  def score(%{signal: signal, slack: slack, drag: drag, confidence: confidence}) do
    signal * 2 + slack + confidence - drag * 3
  end

  def lane(item) do
    value = score(item)
    cond do
      value >= 140 -> "ship"
      value >= 105 -> "watch"
      true -> "hold"
    end
  end
end
