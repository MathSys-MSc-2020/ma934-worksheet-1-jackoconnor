module Task2

#export required functions
export fib_it, fib_rec, fib_mem

#returns the nth fibonacci number (computes iteratively)
#a0 and a1 are the base cases 
function fib_it(n, a0, a1)
    #couple of easy corner cases
    if n == 0
        return a0
    end
    
    if n == 1
        return a1
    end

    f1 = a0
    f2 = a1

    for i=2:n
        f3 = f1 + f2
        f1 = f2
        f2 = f3
    end
    return f2
end

#returns the nth fibonacci number (computes recursively)
#a0 and a1 are the base cases
function fib_rec(n, a0, a1)
    if n == 0
        return a0
    end
    if n == 1
        return a1
    end
    return fib_rec(n-1, a0, a1) + fib_rec(n-2, a0, a1)
end

function fib_mem(n, a0, a1)
    dict = Dict()
    
    if n == 0 
        return a0
    end
    
    if n == 1
        return a1
    end
    
    if !(haskey(dict, n))
        dict[n] = fib_mem(n-1, a0, a1) + fib_mem(n-2, a0, a1)
    end
    
    return dict[n]
end

#end the module TRY TO REMEMBER THIS IN FUTURE 
end
