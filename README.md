# Pi Calculator

This Elixir project implements and compares three different numerical methods for calculating the value of \( \pi \). Each method is implemented using both recursive and iterative approaches, adhering to functional programming principles.

## Methods Implemented

1. **Leibniz Series**:
   - Formula: \( \pi = 4 \cdot (1 - \frac{1}{3} + \frac{1}{5} - \frac{1}{7} + \frac{1}{9} - \dots) \)
   - Simple but slow convergence.

2. **Nilakantha Series**:
   - Formula: \( \pi = 3 + 4 \cdot (\frac{1}{2 \cdot 3 \cdot 4} - \frac{1}{4 \cdot 5 \cdot 6} + \dots) \)
   - Faster convergence compared to Leibniz.

3. **Monte Carlo Method**:
   - Estimate \( \pi \) by simulating random points inside a square and counting how many fall within a quarter-circle.

## Features

- Recursive and iterative implementations of each method.
- Functional programming principles: immutability and recursion.
- Comparison of methods based on:
  - Accuracy
  - Execution time
  - Recursion depth.

## Project Structure

```plaintext
pi_calculator/
├── lib/
│   ├── pi_calculator.ex    # Main module with implementations
│   ├── metrics.ex          # Helper functions for accuracy and timing
│   └── comparison.ex       # Compare methods and print results
├── test/
│   ├── pi_calculator_test.exs  # Unit tests for implementations
│   └── test_helper.exs         # Test helper
├── mix.exs                   # Elixir project configuration
```

# How to Run

## Compile the Project
Run the following command to compile the project:

```bash
mix compile
```

## Run Comparisons
Launch the interactive shell and run the `Comparison.compare_methods/1` function to compare the different methods:

```bash
iex -S mix
Comparison.compare_methods([100, 1_000, 10_000])
```

This will:

- Compare all methods (recursive and iterative implementations of Leibniz, Nilakantha, and Monte Carlo).
- Measure execution time and accuracy for each method.
- Print the results to the console.

## Run Tests
Execute the test suite to ensure all implementations are correct:

```bash
mix test
```

### Example test output:

```plaintext
Finished in 0.03 seconds
3 tests, 0 failures

Randomized with seed 123456
```

## Example Output
When running `Comparison.compare_methods/1`, the results might look like this:

```plaintext
Iterations: 1000
Leibniz Recursive - Time: 21 μs, Accuracy: 0.0001
Leibniz Iterative - Time: 20 μs, Accuracy: 0.0001
Nilakantha Recursive - Time: 27 μs, Accuracy: 2.5e-10
Nilakantha Iterative - Time: 27 μs, Accuracy: 2.5e-10
Monte Carlo Recursive - Time: 258 μs, Accuracy: 0.053
Monte Carlo Iterative - Time: 266 μs, Accuracy: 0.014
```

## Observations

### Leibniz Series:
- Converges slowly and requires many iterations for decent accuracy.

### Nilakantha Series:
- Converges much faster and achieves high accuracy with fewer iterations.

### Monte Carlo Method:
- Probabilistic approach with slower convergence compared to the series-based methods.

## Conclusion
The Nilakantha Series provides the most accurate and efficient calculation of π for moderate iteration counts. While the Monte Carlo Method is interesting for simulations, it is not practical for calculating π with high accuracy.
