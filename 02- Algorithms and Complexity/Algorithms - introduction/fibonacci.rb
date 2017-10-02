def fibonnaci(n) 
  b = 0;
  a = 1;
  temp;
  while (n >= 0)
    temp = a
    a = a + b
    b = temp
    n-= 1
  end
  return b
end
