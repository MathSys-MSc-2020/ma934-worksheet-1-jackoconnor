using Revise
using BenchmarkTools

using Task2

#initial values for sequence generation
a0 = 0
a1 = 1

println(fib_it(10, a0, a1))
println(fib_rec(10, a0, a1))
println(fib_mem(10, a0, a1))