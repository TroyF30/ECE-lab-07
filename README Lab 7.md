# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names: Peter Krahn, Troy Fowers

## Summary

We learned how to create a half subtracter, one's complement and two's complement in vivado. We realized that for the one's complement we needed to include another wire to represent the carry / borrow value to make the bits invert. This is because in one's complement we need to invert all of the bits at the end of the addition, and finally include the carry bit at the end. For the two's complement, since we weren't adding two 4 bit digits and instead are making the entire 8 bit string the complement. This made it pretty easy to implement the full adder from the previous lab, as the result from the inverted bit it used in the full adder for the following bit. 

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

Only difference is not A in the half subtractor. Aka half subtractor is: assign Borrow is = ~A \& B half adder is A \& B.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?

We have another field at the end of the code so we need another wire for that sum\[4] which makes it unintuitive. Since it's a 4 bit adder for one's compliment we get a fifth carry bit that would normally overflow we need to use a carry wire to make it so it doesn't overflow. Then make it change to one's compliment.

### 3 - What is the edge case and problem with Two’s Complement number representation?

In the case of result getting a carry we need to make it's two's compliment. In which we call the inverted function of A and then add 8'b00000001. The problem with two complement is the range of negative numbers is one larger than the range of positive numbers. So there is no positive equivalent. 

