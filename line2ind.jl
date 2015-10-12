function line2ind(i,n)
sum = n - 1
row = 1
while i > sum
  row += 1
  sum += n - row
end

(row, n - sum + i)
end

println("slow")
@time line2ind(400000,1000)
for i = 1:10
  println(line2ind(i,5))
end

function line2ind_fast(i,n)
  t = n*(n-1)/2 - i
  x = ceil((sqrt(9+8*t)-1)/2)
  y = n - t + (x-1)*x/2
  (n - x, y)
end

println("fast")
@time line2ind_fast(400000,1000)
for i = 1:10
  println(line2ind_fast(i,5))
end
