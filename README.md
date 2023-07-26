# Connect Four

This is a classic connect four game that takes in CLI from the player to decide to play or quit, choose their desired piece type, and choose which column they'd like to place their piece in for each turn they take.

# Project Reflection

1. **This project did not provide an interaction pattern. How did you approach the design and problem solving process for this project?**
   - Before we did any actual coding, we had a brainstorm session in which we made an outline for the classes, attributes, and methods that we wanted. We also spent some time visualizing how we wanted our board to be broken down, which in this case was by column. We knew that breaking it down into columns would make checking our horizontal win condition check harder, but it was easier for us to build the functionality of dropping a piece in. We also decided to make our board an array of arrays instead of other methods because we knew the board was bounded and because it's easier to visualize the physical board as an array of arrays than it is with hashes.

     ![Alt text](<Screenshot 2023-07-26 at 2.33.02 PM-1.png>)**<br />**<br />

2. **If you had one more day to work on this project, what would you work on?**
   
   - If we had one more day to work on this project, we would refactor our diagonal_win? helper method. We also would try to add more functionality to our project with features such as an option to have a second player, an option to have a win/loss record, and having the project be wrapped in a Gem.**<br />**<br />

3. **Describe the pairing techniques you used while working on this project.**
   - A majority of this project was done together with the driver navigator and ping pong methods. At the start of the project we both built out our Player, CPU, and Game Piece classes seperately, and then came back together to compare approaches and decide on what we wanted moving forward. Although this technique ended up being less efficient, it helped us both get an understanding of the building blocks of our project. We also split our diagonal_win? method by direction to be more efficient.**<br />**<br />

4. **Describe how feedback was shared over the course of this project.**
   - Since a majority of the project was done together, our feedback was primarily given live. If one of us had an idea for a possible implementation, we would do an in-depth dive together before we decided what to do moving forward. We also shared feedback through comments in our pull requests on GitHub.**<br />**<br />