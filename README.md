# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Parker Williams
Jonah Elliott

## Summary
We are using combinatorial logic and FSM design to


## Lab Questions

### Compare and contrast One Hot and Binary encodings
Binary coding uses fewer flip-flops but is more complex to encode and decode. While one hot has one state for each binary column, is easier to encode, but needs more flipflops for FSM design.

### Which method did your team find easier, and why?
We found the logic behind one-hot encoding easier, however, Binary encoding was easier to implement into verilog with Dffs.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
One-hot might be better for speed and when you have a small system since it is easy to encode and decode. However, binary encoding might be more important to reduce hardware and can represent more complex systems (with more states). A traffic light would be a good option for one-hot whereas a manual transmission could be represented better in hardware using binary (since there are so many gears like 6 or 12 speed for semi trucks).


