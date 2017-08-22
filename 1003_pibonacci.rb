def fibonacci(n)
    case n
    when 0
        return 1, 0
    when 1
        return 0, 1
    else
        s1, s2 = query(n-1), query(n-2)
        return s1[0] + s2[0], s1[1] + s2[1]
    end
end

def query(n)
    @dic[n] ? @dic[n] : @dic[n] = fibonacci(n)
end

def test_for(n)
    out = query(n)
    print out[0], ' ' , out[1], "\n"
end

input , @dic = [], {}
gets.chomp.to_i.times { input << gets.chomp.to_i }
input.each { |n| test_for(n) if n.between?(0,40) }

puts @dic

=begin
4 -> 3, 2
    3 -> 2, 1
        2 -> 1, 0
            1 = 1 (0 1)
            0 = 0 (1 0)
        2 = 1 (1 1)
        1 = 1 (0 1)
    3 = 2 (1 2)
    2 = 1 (1 1)
4 = 3 (2 3)

5 -> 4, 3
    4 = 3 (2 3)
    3 = 2 (1 2)
5 = 5 (3 5)

...

=end