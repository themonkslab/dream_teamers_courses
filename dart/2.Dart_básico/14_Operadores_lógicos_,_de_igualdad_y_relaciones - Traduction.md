# Logical, equality and relational operators

The _equality and relational operators_ allow us to compare expressions. All of them have in common that the result will be a `bool`:

Equal: __`==`__ `print(5==2)`
Not equal: __`!=`__ `print(5!=2)`
Greater than: __`>`__ `print(5>2)`
Less than: __`<`__ `print(5<2)`
Greater than or equal to: __`>=`__ `print(5>=2)`
Less than or equal to: __`<=`__ `print(5<=2)`

In this case, we use _literals_ `int` but note that we can use any expressions we want and mix literals with variables, as long as they are _compatible_. 🤨 Notice what happens if you try to compare `print(5 < 2.5);`, come to any conclusion?

However, how would you do this if you wanted to compare multiple expressions?

## _Logical operators_

