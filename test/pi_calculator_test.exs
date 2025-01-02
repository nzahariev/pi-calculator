defmodule PiCalculatorTest do
  use ExUnit.Case
  doctest PiCalculator

  test "Leibniz series" do
    assert PiCalculator.leibniz_recursive(10) > 3
    assert PiCalculator.leibniz_iterative(10) > 3
  end

  test "Nilakantha series" do
    assert PiCalculator.nilakantha_recursive(10) > 3
    assert PiCalculator.nilakantha_iterative(10) > 3
  end

  test "Monte Carlo method" do
    assert PiCalculator.monte_carlo_recursive(1000) > 3
    assert PiCalculator.monte_carlo_iterative(1000) > 3
  end
end
