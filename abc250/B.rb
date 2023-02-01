n, a, b = gets.split(' ').map(&:to_i)


flag = true
count = 0
(a * n).times do |i|
    string = ''
    if flag
        n.times do |i|
            if i.even?
                string << '.' * b
            else
                string << '#' * b
            end
        end
    else
        n.times do |i|
            if i.even?
                string << '#' * b
            else
                string << '.' * b
            end
        end
    end

    puts string

    count +=1

    if count == a
        flag = !flag
        count = 0
    end
end

