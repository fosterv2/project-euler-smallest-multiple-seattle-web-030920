# Implement your object-oriented solution here!
class SmallestMultiple
    def initialize(input)
        @input = input
    end

    def lcm
        lowest = 1
        (2..@input).each do |num|
            if lowest % num != 0
                lowest *= num / gcd(lowest, num)
            end
        end
        lowest
    end

    def gcd(a, b)
        while b > 0
            a %= b
            return b if a == 0
            b %= a
        end
        a
    end
end
