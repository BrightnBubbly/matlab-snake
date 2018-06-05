function snakecharmer()
    a= randi(20,1);
    x=[a];% generates a random starting x value
    b= randi(20,1);
    y=[b];% generates a random starting y value
    go=randi(4,1); % generates a random integer to be translated to a 
                  % starting direction
    r=randi(24,1);% generates a random "x" value for the food position
    m=randi(24,1);% generates a random "y" value for the food position
    j=randi(24,1);% generates a random "x" value for the food position
    p=randi(24,1);% generates a random "y" value for the food position
    figure('KeyPressFcn',@snake_charmer_setup); 
    grid on
function snake_charmer_setup(~,dir)
    switch dir.Character
    case 'f'% this is the keystroke for left
        go= 1;
    case 'h'% this is the keystroke for right
        go=2;
    case't'% this is the keystroke for up
        go=3;
    case 'g'% this is the keystroke for down
        go=4;
    end
end

whitebg([0 .5 .6])% Changes the Plot Background Color

%Dealing with Snake Direction
while x(1)>0 && x(1)<25 && y(1)<25 && y(1)>0% this sets it so that it only works within
    v= length(x);% tells how many terms are in our vectors
                 % x and y are the same size, so we'll just use x
   for q=2:v % runs from the second to the last terms of the vector
       if x(1)==x(q) && y(1)==y(q)
text(10,4, 'Canibal....')
    hold off
    x(1)=26;
    hold on
    go=2;
end
end

%Go Left
    if go==1% this is the keystroke for left   
       for q=v:-1:2 % runs from the second to the last terms of the vector
        x(q)=x(q-1); % makes the x value of the current term equal to the
                      % x value of the term before it
         y(q)=y(q-1); % makes the y value of the current term equal to the
                      % y value of the term before it
       end
       x(1)=x(1)-1; %this moves the square one left
       draw_snake(x,y)%this plots the square
       hold on % allows the food to stay on the screen
       grid on
       title('SNAKE');%puts a title at the top of the plot
       FOOOOD1(r,m)% plots a piece of food
       FOOOOD2(j,p)% plots a piece of food
       hold off % makes it so that only the food stays on the screen
       pause(.3)%this pauses .3 s before plotting the next position
    end

    %Go Right
    if go==2% this is the keystroke for right
        for q=v:-1:2 % runs from the second to the last terms of the vector
            x(q)=x(q-1); % makes the x value of the current term equal to the
                      % x value of the term before it
            y(q)=y(q-1); % makes the y value of the current term equal to the
                      % y value of the term before it
        end
      x(1)=x(1)+1;%this moves the square one right
      draw_snake(x,y)%this plots the square
      hold on % allows the food to stay on the screen
      grid on
      title('SNAKE');%puts a title at the top of the plot
      FOOOOD1(r,m)% plots a piece of food
       FOOOOD2(j,p)% plots a piece of food
      hold off % makes it so that only the food stays on the screen
      pause(.3)%this pauses .3 s before plotting the next position
    end
    
    %Go Up
    if go==3% this is the keystroke for up
      for q=v:-1:2 % runs from the second to the last terms of the vector
        x(q)=x(q-1); % makes the x value of the current term equal to the
                      % x value of the term before it
        y(q)=y(q-1); % makes the y value of the current term equal to the
                      % y value of the term before it
      end
      y(1)=y(1)+1;%this moves the square one up
      draw_snake(x,y)%this plots the square
      hold on % allows the food to stay on the screen
      grid on
      title('SNAKE');%puts a title at the top of the plot
      FOOOOD1(r,m)% plots a piece of food
       FOOOOD2(j,p)% plots a piece of food      
      hold off % makes it so that only the food stays on the screen
      pause(.3)%this pauses .3 s before plotting the next position
    end
    
    %Go Down
    if go==4% this is the keystroke for down
        for q=v:-1:2 % runs from the second to the last terms of the vector
            x(q)=x(q-1); % makes the x value of the current term equal to the
                      % x value of the term before it
            y(q)=y(q-1); % makes the y value of the current term equal to the
                      % y value of the term before it
        end
      y(1)=y(1)-1;%this moves the square one down
      draw_snake(x,y)%this plots the square
      hold on % allows the food to stay on the screen 
      grid on       
      title('SNAKE');%puts a title at the top of the plot
      FOOOOD1(r,m)% plots a piece of food
       FOOOOD2(j,p)% plots a piece of food
      hold off % makes it so that only the food stays on the screen
      pause(.3)%this pauses .3 s before plotting the next position
    end
   
    
    
    
    
% Dealing with Food    
if x(1)==r && y(1)==m %if snake coordinates are the same as food coordinates
     text(15,20,'Nom Nom Nom')% display message "Nom Nom Nom"
     pause(1)% for 1 seconds
    
     %Longer Snake
     if go==1% when going left
     x=[x,x(v)+1];% add another value that would be plotted to the right of
                  % your current rightmost point
     y=[y,[m]];% add another value to the y value at the same height as 
               % the value before it in the vector
     plot(x,y,'kd','MarkerFaceColor','k')%plot new snake with added points
     end
     
     if go==2
     x=[x,x(v)-1];% add another value that would be plotted to the left of
                  % your current leftmost point
     y=[y,[m]];% add another value to the y value at the same height as 
               % the value before it in the vector
     plot(x,y,'kd','MarkerFaceColor','k')%plot new snake with added points
     end
     
     if go==3
     x=[x,[r]];% add another value to the x value at the same x position as 
               % the value before it in the vector
     y=[y,y(v)-1];% add another value that would be plotted below
                  % your current lowest point
     plot(x,y,'kd','MarkerFaceColor','k')%plot new snake with added points
     end
     
     if go==4
     x=[x,[r]];% add another value to the x value at the same x position as 
               % the value before it in the vector
     y=[y,y(v)+1];% add another value that would be plotted above
                  % your current highest point
     plot(x,y,'kd','MarkerFaceColor','k')%plot new snake with added points
     end   
 
     %New Food
     r=randi(24,1);% generates a random "x" value for the food position
     m=randi(24,1);% generates a random "y" value for the food position
     hold on % allows the food to stay on the screen
     FOOOOD1(r,m)% plots a piece of food
     hold off % makes it so that only the food stays on the screen
     for q=1:v % runs from the second to the last terms of the vector
     if r==x(q) && m==y(q) %if food coordinates are the same as snake coordinates
        r=randi(24,1);% generates a random "x" value for the food position
        m=randi(24,1);% generates a random "y" value for the food position
        hold on % allows the food to stay on the screen
        FOOOOD1(r,m)% plots a piece of food
        hold off % makes it so that only the food stays on the screen
     end
     end
end
if x(1)==j && y(1)==p %if snake coordinates are the same as food coordinates
     text(15,20,'Nom Nom Nom')% display message "Nom Nom Nom"
     pause(1)% for 1 seconds
    
     %Longer Snake
     if go==1% when going left
     x=[x,x(v)+1];% add another value that would be plotted to the right of
                  % your current rightmost point
     y=[y,[m]];% add another value to the y value at the same height as 
               % the value before it in the vector
     plot(x,y,'kd','MarkerFaceColor','k')%plot new snake with added points
     end
     
     if go==2
     x=[x,x(v)-1];% add another value that would be plotted to the left of
                  % your current leftmost point
     y=[y,[m]];% add another value to the y value at the same height as 
               % the value before it in the vector
     plot(x,y,'kd','MarkerFaceColor','k')%plot new snake with added points
     end
     
     if go==3
     x=[x,[r]];% add another value to the x value at the same x position as 
               % the value before it in the vector
     y=[y,y(v)-1];% add another value that would be plotted below
                  % your current lowest point
     plot(x,y,'kd','MarkerFaceColor','k')%plot new snake with added points
     end
     
     if go==4
     x=[x,[r]];% add another value to the x value at the same x position as 
               % the value before it in the vector
     y=[y,y(v)+1];% add another value that would be plotted above
                  % your current highest point
     plot(x,y,'kd','MarkerFaceColor','k')%plot new snake with added points
     end   
 
     %New Food
     j=randi(24,1);% generates a random "x" value for the food position
     p=randi(24,1);% generates a random "y" value for the food position
     hold on % allows the food to stay on the screen
     FOOOOD2(j,p)% plots a piece of food
     hold off % makes it so that only the food stays on the screen
     for q=1:v % runs from the second to the last terms of the vector
     if j==x(q) && p==y(q) %if food coordinates are the same as snake coordinates
        j=randi(24,1);% generates a random "x" value for the food position
        p=randi(24,1);% generates a random "y" value for the food position
        hold on % allows the food to stay on the screen
        FOOOOD2(j,p)% plots a piece of food
        hold off % makes it so that only the food stays on the screen
     end
     end
end
if x(1)==25;
     text(5,7, 'Epic Fail!!')%this ends the game and displays "Epic Fail!!" on 
     % the plot when the square hits the right side
end

if y(1)==0;
     text(5,7, 'Stop Hitting Your Head Against a Wall!!')
     %this ends the game and displays "Stop Hitting Your Head
     % Against a Wall!!" on the plot when the square hits the bottom
end

if y(1)==25;
    text(5,7, 'Silly Rabbit, Trix Are for Kids!!')%this ends the game and 
    % displays "Silly Rabbit, Trix Are for Kids" on the plot when the square 
    % hits the top
end

if x(1)==0;
    text(5,7, 'Again?!?!')%this ends the game and displays "Again?!?" on 
     % the plot when the square hits the left side
end


end
end