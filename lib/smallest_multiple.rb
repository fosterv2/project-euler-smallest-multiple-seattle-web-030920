# Implement your procedural solution here!
def gcd(a, b)
    while b > 0
        a %= b
        return b if a == 0
        b %= a
    end
    a
end

def smallest_multiple(input)
    lowest = 1
    (2..input).each do |num|
        if lowest % num != 0
            lowest *= num / gcd(lowest, num)
        end
    end
    lowest
end
