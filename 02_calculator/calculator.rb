def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(nums)
    res = 0
    nums.each do |num|
        res += num
    end
    res
end

def multiply(nums)
    res = 1
    nums.each do |num|
        res *= num
    end
    res
end

def power(num1, num2)
    num1**num2
end

def factorial(num)
    if num == 0
        1
    else
        num * factorial(num - 1)
    end
end