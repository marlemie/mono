# Truthiness

true == true
false == false
true != false

true and true
false or true
true and false == false
true and nil == nil
# does not work: 1 and true

false || true
nil || true
!nil == !false == true
true && false == false
true && nil == nil
!"any other value" == false

# Lists
## Linked List
[0, "1", true]
[0, 1] ++ [2, 3] == [0, 1, 2, 3]
[1, 2, 1, 3, 1, 4] -- [1, 1] == [2, 3, 1, 4]
hd([0, 1, 2]) == 0
tl([0, 1, 2]) == [1, 2]

## Charlists
[104, 101, 104, 101] == ~c"hehe"

## Tuples (or arrays)
{0, "1", true}
elem({0, "1", true}, 1) == "1"
put_elem({0, "1", true}, 1, "2") == {0, "2", true}
