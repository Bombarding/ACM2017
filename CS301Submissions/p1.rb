def calculate_fees(a, n)
  sum = pending = 0
  first_miss = -1
  n.times do |i|
    if a[i] == 0
      pending +=1
      if first_miss == -1
        first_miss = i
      end
    end
  end
  sum = pending * 1000 + (first_miss == -1 ? 0 : (n - first_miss) * 100)
  puts sum
end

tcs = gets.to_i
tcs.times do
  n = gets.to_i
  a = gets.split(" ").map(&:to_i)
  calculate_fees(a, n)
end

#4
#2
#1 1
########0
#2
#0 0
#######2200
#3
#0 1 0
#######2300
#2
#0 1
#######1200
