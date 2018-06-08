For my project, I chose to write the code for a “snake game.” There would be a “snake” that would travel around a set plot and grow when it “eats food.” I chose to do the snake project because it seemed like it would be a lot of fun. There are a lot of moving parts that are all intertwined and you had to be aware of this while writing code.

I started with a thought process that would seem rational to anyone who isn’t a programmer. I would think what I wanted and then try and find the syntax online to force my ideas on the computer. Like any foreign language, however, you cannot think in one and try and communicate in another. I discovered that, if I was going to write a code, I had to stop thinking in human and start thinking in computer. It allowed me to better understand what I was doing and what I needed to change so that I could better communicate with the computer.

Another process I utilized was the debugger. The debugger is SO useful. I could test different scenarios and figure out where and when my code did and didn’t work. This helped me to discover that that the reason my code wasn’t working the way I wanted it to was that I had something outside of my loop that should have been changing with each iteration. The debugger also helped me to familiarize myself with the way the computer was working through my code. Once I discovered it, it made my life a lot easier and helped me to solve my own problems. It also made it so that I could target the problem area, rather than just fooling around with my whole code to try to get one part to work.

My snake game has many of the basic ideas of the stereotypical snake game. I start out with a single random black diamond moving in a random direction. This represents my snake when it is one unit long. According to the user’s input, the snake will move left, right, up or down. There are also two random white dots plotted. These are the food. My code will recognize when the black diamond overlaps with a white dot. This represents my snake eating a piece of food. When this happens, the screen will say “Nom Nom Nom,” another white dot will be plotted and another black diamond will be added to my snake.

The data I originally input mostly consists of random numbers. I have a random number between zero and twenty-five generated for each the x and y coordinates of my first snake unit and each of the two pieces of food. The random numbers for the original x and y coordinates do not change, however, a new set of random numbers is generated for the food positions each time a piece of food is consumed by my snake. I also generate a random number between one and four that I use cases to transform into a random starting direction. Since I have four directions, each of the four corresponds to left, right, up and down (respectively).

I had to work my code so that each unit of the snake would follow the unit in front of it. Initially, I was having trouble with my snake just traveling in a block and not in a serpentine motion. All of the blocks would respond to the key pressed by the user. The first thing I did to fix this was to make each new plotted point a new value in a matrix. I have an x matrix and a y matrix, so each new unit of the snake would correspond to one new value in each matrix. I then had to write a code changing each element of the matrices individually (corresponding values in the x and y matrix would change at the same time). In my code, the last value takes on the value of the space before it in the matrix. Once the second entry has taken on the value of the first, the first follows the same code as if there were only one unit to the snake. It was difficult for me to grasp this concept at first, but, again, it clicked when I started thinking like a computer. I remembered something from one of the lectures about adding elements to a matrix and built off of this idea to create my code. 

Pseudocode for Construction and Movement of Snake of Multiple Units:
% determine number of values in each matrix to be used later in the code
v= length(x);
% when the snake eats:
		% add another value to 			% add another value to
each matrix (left/right)			each matrix (down/up)
x=[x,x(v)+/- 1]; 				x=[x,[r]];
     		y=[y,[m]];					y=[y,y(v)+/- 1];
% determine number of values in each matrix to be used later in the code
v= length(x);
% to make the snake of more than one unit move
% set up a for loop that runs from the second to the last terms of the vector
for q=v:-1:2 
       		% make each term in each matrix equal to the term before it, start with the last
x(q)=x(q-1); 
y(q)=y(q-1); 

My snake dies whenever it hits the wall. I have a different error message for each wall, to make things interesting. Similarly, when the snake gets long enough to be able to go back on itself, it will also die. When this happens, a message saying “Cannibal…” pops up. I have also included in my solution code to prevent some errors. One such error is that it is possible that the random numbers generated to plot the food will be the same as where my snake is already plotted. I wrote a section of code stating that, if both the x AND y coordinates of the food are the same as the x and y coordinates of one unit of my snake, the computer should generate a new set of random numbers and plot the food where my snake is not already plotted. 

While I have tried to eliminate as many errors as I could, there are bound to be places where my solution will fail. I have noticed that, if you turn when you hit the wall, you stay alive for one more movement and then die. This is one point at which my solution fails. It also might be considered failing that the user does not have any way to know how well they have done and/or compare their success in a current round with that of a previous round or friends’ rounds. I was not successful in implementing a scoring system or a way of notifying the user of their score. This may make my version of snake less interesting to the user. I also feel like my game has an odd response time. I wasn’t really sure how to fix this. Once you got used to when you were supposed to press the button, it was fine, but it was a bit strange at first. 

If I were to do this project again, there are a few things I would change. First, I would implement a scoring system and notify the user of his progress. This would increase the challenge. I would also make it so that the snake could have more than one speed. If you pressed a direction key and the snake was already going in that direction, the snake would speed up. This would give the user a greater sense of control over the game, keeping his attention longer. It might also be fun for the user to be able to choose the color and shape of the snake. This doesn’t seem like it would be too difficult. Another way to implement this is to have the code randomly generate a shape and color for the snake.  

While it was certainly challenging, I really enjoyed the problem solving involved in creating this code. While, looking back on the project, the beginning checkpoints were conceptually easier; I felt more at ease during the later parts of the project. I think this is because I was able to learn how to step through my code myself and understand what my errors were and how to fix them. In the beginning, when I would run into a problem, I just messed things around until something changed and my coding was largely blind trial and error. Things really became interesting once I started to be able to think about what I was doing. I really appreciate having done this project. I feel really accomplished and interested in pursuing further computer science classes now. 

References:
Mathworks.com/help
https://culearn.colorado.edu/webct/urw/lc5116011.tp0/cobaltMainFrame.dowebct
