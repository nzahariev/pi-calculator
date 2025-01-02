defmodule PiCalculator do
  # Recursive implementation of Leibniz Series
  def leibniz_recursive(terms), do: leibniz_recursive(terms, 0, 1, 1)

  defp leibniz_recursive(0, sum, _, _), do: 4 * sum
  defp leibniz_recursive(terms, sum, sign, denominator) do
    leibniz_recursive(terms - 1, sum + sign * 1 / denominator, -sign, denominator + 2)
  end

  # Pure recursive implementation of Leibniz Series (previously iterative)
  def leibniz_iterative(terms), do: leibniz_iterative(terms, 0, 1, 1)

  defp leibniz_iterative(0, sum, _, _), do: 4 * sum
  defp leibniz_iterative(terms, sum, sign, denominator) do
    leibniz_iterative(terms - 1, sum + sign * 1 / denominator, -sign, denominator + 2)
  end

  # Recursive implementation of Nilakantha Series
  def nilakantha_recursive(terms), do: nilakantha_recursive(terms, 3, 1, 2)

  defp nilakantha_recursive(0, sum, _, _), do: sum
  defp nilakantha_recursive(terms, sum, sign, denominator) do
    term = 4 / (denominator * (denominator + 1) * (denominator + 2))
    nilakantha_recursive(terms - 1, sum + sign * term, -sign, denominator + 2)
  end

  # Pure recursive implementation of Nilakantha Series (previously iterative)
  def nilakantha_iterative(terms), do: nilakantha_iterative(terms, 3, 1, 2)

  defp nilakantha_iterative(0, sum, _, _), do: sum
  defp nilakantha_iterative(terms, sum, sign, denominator) do
    term = 4 / (denominator * (denominator + 1) * (denominator + 2))
    nilakantha_iterative(terms - 1, sum + sign * term, -sign, denominator + 2)
  end

  # Recursive implementation of Monte Carlo Method
  def monte_carlo_recursive(points), do: monte_carlo_recursive(points, 0, 0)

  defp monte_carlo_recursive(0, inside, total), do: 4 * inside / total
  defp monte_carlo_recursive(points, inside, total) do
    x = :rand.uniform()
    y = :rand.uniform()
    inside = if x * x + y * y <= 1, do: inside + 1, else: inside
    monte_carlo_recursive(points - 1, inside, total + 1)
  end

  # Pure recursive implementation of Monte Carlo Method (previously iterative)
  def monte_carlo_iterative(points), do: monte_carlo_iterative(points, 0, 0)

  defp monte_carlo_iterative(0, inside, total), do: 4 * inside / total
  defp monte_carlo_iterative(points, inside, total) do
    x = :rand.uniform()
    y = :rand.uniform()
    inside = if x * x + y * y <= 1, do: inside + 1, else: inside
    monte_carlo_iterative(points - 1, inside, total + 1)
  end
end
