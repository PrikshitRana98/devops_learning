#!/bin/bash

# This is a sample function
my_function() {
    echo "Hello, World!"
}

# Another example function that takes arguments
greet() {
    local name="$1"
    echo "Hello, $name!"
}

# A function to calculate the factorial of a number
factorial() {
    local num="$1"
    if [ "$num" -le 1 ]; then
        echo 1
    else
        local temp=$((num - 1))
        local result=$(factorial "$temp")
        echo $((num * result))
    fi
}  

# now a function which returns a value and takes two arguments
add() {
    local a="$1"
    local b="$2"
    echo $((a + b))
}

# now you can call these functions in your script
my_function
greet "Alice"
echo "Factorial of 5 is: $(factorial 5)"
result=$(add 10 20)
echo "The sum of 10 and 20 is: $result"



