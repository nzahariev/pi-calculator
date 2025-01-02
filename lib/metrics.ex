defmodule Metrics do
  @pi_actual 3.141592653589793

  # Calculate the absolute difference from the actual value of π
  def accuracy(value) do
    abs(@pi_actual - value)
  end

  # Measure execution time of a function
  def measure_time(fun) do
    {time, result} = :timer.tc(fun)
    {time, result}
  end
end
