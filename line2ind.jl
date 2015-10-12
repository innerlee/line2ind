function line2ind(i,n)
sum = n - 1
row = 1
while i > sum
  row += 1
  sum += n - row
end

(row, n - sum + i)
end

for i = 1:10
  println(line2ind(i,5))
end
