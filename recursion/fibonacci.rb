def fibs(n)
  fibs_array = [0, 1]
  
  return fibs_array[0] if n == 0

  while n > 1
    fibs_array.push(fibs_array[-1] + fibs_array[-2])
    n -= 1
  end
  
  fibs_array
end

print fibs(1)

def fibs_rec(n, arr = [0])
  if n == 0
    return arr
  elsif n == 1
    return arr.push(1)
  else
    return fibs_rec(n - 1, arr).push(arr[-2] + arr[-1])
  end
end

print fibs_rec(8)