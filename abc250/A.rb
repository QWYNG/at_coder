h, w = gets.split(' ').map(&:to_i)
r, c = gets.split(' ').map(&:to_i)

if h > 1 && w > 1
    if r == 1 || r == h
        if c == w || c == 1
            puts 2
        else
            puts 3
        end
    else
        if c == w || c == 1
            puts 3
        else
            puts 4
        end
    end

elsif h == 1 && w == 1
    puts 0
else
    if r == 1 || r == h
        if c == w || c == 1
            puts 1
        else
            puts 2
        end
    else
        if c == w || c == 1
            puts 2
        else
            puts 2
        end
    end
end

