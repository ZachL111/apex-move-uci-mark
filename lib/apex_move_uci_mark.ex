defmodule ApexMoveUciMark do
  @threshold 154
  @risk_penalty 4
  @latency_penalty 3
  @weight_bonus 3

  def score(%{demand: demand, capacity: capacity, latency: latency, risk: risk, weight: weight}) do
    demand * 2 + capacity + weight * @weight_bonus - latency * @latency_penalty - risk * @risk_penalty
  end

  def classify(signal), do: if(score(signal) >= @threshold, do: "accept", else: "review")
end
