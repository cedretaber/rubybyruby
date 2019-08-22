require "minruby"

tree = minruby_parse("1 + 2 * 4")

p tree

def sum(tree)
  if tree[0] == "lit"
    tree[1]
  else
    left = sum(tree[1])
    right = sum(tree[2])
    left + right
  end
end

tree = minruby_parse("(1 + 2) + (3 + 4)")
p(sum(tree))

def evaluate(tree)
  if tree[0] == "lit"
    tree[1]
  else
    l = evaluate(tree[1])
    r = evaluate(tree[2])
    case tree[0]
    when "+"
      l + r
    when "-"
      l - r
    when "*"
      l * r
    when "/"
      l / r
    when "%"
      l % r
    when "**"
      l ** r
    when "=="
      l == r
    when "!="
      l != r
    when "<"
      l < r
    when "<="
      l <= r
    when ">"
      l > r
    when ">="
      l >= r
    end
  end
end

tree = minruby_parse("7 * 2 + 9 / 3")
p evaluate(tree)

tree = minruby_parse("42 < 99")
p evaluate(tree)

def max(tree)
  if tree[0] == "lit"
    tree[1]
  else
    l = max(tree[1])
    r = max(tree[2])
    if l > r
      l
    else
      r
    end
  end
end

p max(minruby_parse("1 + 2 * 3"))
p max(minruby_parse("1 + 4 + 3"))