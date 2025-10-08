#!/bin/bash

# Assignment operators demo

# Simple assignment
a=10
echo "Initial value of a: $a"

# Add and assign
((a += 5))
echo "After a += 5, a = $a"

# Subtract and assign
((a -= 2))
echo "After a -= 2, a = $a"

# Multiply and assign
((a *= 3))
echo "After a *= 3, a = $a"

# Divide and assign
((a /= 3))
echo "After a /= 3, a = $a"

# Modulus and assign
((a %= 4))
echo "After a %= 4, a = $a"
