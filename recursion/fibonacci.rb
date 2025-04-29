def fibs(n)
  fibs_array = [0]
  digit = 0
  
  if n == 0
    return fibs_array
  end

  fibs_array = [0, 1]
  
  while n > 1
    fibs_array.push(fibs_array[-1] + digit)
    n -= 1
    digit = fibs_array[-2]  
  end
  fibs_array
end

print fibs(9)

def fibs_rec(n)
  arr = [0]
  if n == 0
    return arr
  elsif n == 1
    return arr.push(1)
  else
    return fibs_rec(n - 1).push(fibs_rec(n - 1)[-2] + fibs_rec(n - 1)[-1])
  end
end

print fibs_rec(9)