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
  tot = n*(n-1)/2
  x = ceil((sqrt(9+8*(tot-i))-1)/2)
  y = n - (tot - i - (x-1)*x/2)
  (convert(Int, n-x), convert(Int, y))
end

println("fast")
@time line2ind_fast(400000,1000)
for i = 1:10
  println(line2ind_fast(i,5))
end
