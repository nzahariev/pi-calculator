defmodule Comparison do
  alias PiCalculator
  alias Metrics

  def compare_methods(iterations_list) do
    Enum.each(iterations_list, fn iterations ->
      IO.puts("Iterations: #{iterations}")

      # Measure Leibniz (Recursive)
      {time_leibniz_rec, result_leibniz_rec} =
        Metrics.measure_time(fn -> PiCalculator.leibniz_recursive(iterations) end)

      IO.puts("Leibniz Recursive - Time: #{time_leibniz_rec} μs, Accuracy: #{Metrics.accuracy(result_leibniz_rec)}")

      # Measure Leibniz (Iterative)
      {time_leibniz_iter, result_leibniz_iter} =
        Metrics.measure_time(fn -> PiCalculator.leibniz_iterative(iterations) end)

      IO.puts("Leibniz Iterative - Time: #{time_leibniz_iter} μs, Accuracy: #{Metrics.accuracy(result_leibniz_iter)}")

      # Measure Nilakantha (Recursive)
      {time_nilakantha_rec, result_nilakantha_rec} =
        Metrics.measure_time(fn -> PiCalculator.nilakantha_recursive(iterations) end)

      IO.puts("Nilakantha Recursive - Time: #{time_nilakantha_rec} μs, Accuracy: #{Metrics.accuracy(result_nilakantha_rec)}")

      # Measure Nilakantha (Iterative)
      {time_nilakantha_iter, result_nilakantha_iter} =
        Metrics.measure_time(fn -> PiCalculator.nilakantha_iterative(iterations) end)

      IO.puts("Nilakantha Iterative - Time: #{time_nilakantha_iter} μs, Accuracy: #{Metrics.accuracy(result_nilakantha_iter)}")

      # Measure Monte Carlo (Recursive)
      {time_monte_carlo_rec, result_monte_carlo_rec} =
        Metrics.measure_time(fn -> PiCalculator.monte_carlo_recursive(iterations) end)

      IO.puts("Monte Carlo Recursive - Time: #{time_monte_carlo_rec} μs, Accuracy: #{Metrics.accuracy(result_monte_carlo_rec)}")

      # Measure Monte Carlo (Iterative)
      {time_monte_carlo_iter, result_monte_carlo_iter} =
        Metrics.measure_time(fn -> PiCalculator.monte_carlo_iterative(iterations) end)

      IO.puts("Monte Carlo Iterative - Time: #{time_monte_carlo_iter} μs, Accuracy: #{Metrics.accuracy(result_monte_carlo_iter)}")
      IO.puts("")
    end)
  end
end
