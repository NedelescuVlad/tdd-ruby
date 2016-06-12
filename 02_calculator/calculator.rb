def add(x, y)
    x + y
end

def subtract(x, y)
    x - y
end

def sum(numbers)
    sum = 0
    numbers.each do |number|
          sum += number
    end
    return sum
end

def multiply(numbers)
    prod = 1
    numbers.each do |number|
        prod *= number
    end
    return prod
end

#a to the power of b
def power(a, b)
    if (b == 0)
        return 1
    end   
    (b-1).times do
        a = a*a
    end
    return a
end

def factorial(number)

    if (number <= 1)
        return 1 
    end

    temp = number * factorial(number - 1)
end
