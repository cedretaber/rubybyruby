i = 1
while i <= 100
  if i % 5 == 0 && i % 3 == 0
    p("FizzBuzz")
  else
    if i % 5 == 0
      p("Buzz")
    else
      if i % 3 == 0
        p("Fizz")
      else
        p(i)
      end
    end
  end
  i = i + 1
end