# Overall

I started by clarifying my thinking in a README. This gave my a chance to think more deeply about the problem while generating documentation.

Doing it this way also helped me think of solutions. I settled on a scoring system with numbers considered golden after a certain threshold.

It was mainly chosen for flexibility. I could define a set of rules to mark numbers with a level of goldenness. Think of it like Password Security Strength. You could display that to users about their current number and ask them if they want to find a better number. I guess that's a kind of embedded business model.

# Data Structure

I'm still not happy with the chosen data structure. But for the simple cases I chose to implement it holds up well.

I chose to store the number as a string internally to make it more malleable in the future. I also chose to split the number into two by four segments leading to a cleaner way to think about the phone number in helper methods.

Ideally I'd like to revisit this, so it's better able to handle other segmenting types like 2 + 3*2.

# Testing

Testing is vital to me. I don't want to submit code without having some form of tests underlining them. I've certainly done that before only to find it come back to bite me.

I'm not religious about having a single line of code covered. Instead I prefer just enough so I can have a certain level of confidence about the code I ship.
