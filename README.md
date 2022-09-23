Step 1 - Set Up The Project

Go to https://github.com and clone the starting project to your local computer. Open it using Android Studio and take a look around the project.

- There is an images folder with all the ball images you will need.
- There are a total of 5 images.

Step 2 - Create a Stateless Widget

- Create a new Stateless widget called BallPage in your main.dart file.
-   Replace the word null with the new Stateless Widget you created.

Step 3 - Create a Stateful Widget

- Create a new Stateful Widget called Ball in your main.dart file.
- Instead of BallPage having a body of Container() replace it with your new Stateful Widget.



	- Your Ball Stateful Widget should display a the ball1.png image. (You don't have to touch the pubscpec.yaml file)
	- Make sure the image is centred.
	- When you run the app this is what you're aiming for:

Step 4 - Make it Interactive

- Use a FlatButton Widget to make the Image clickable.
- Add a print statement that gets triggered when the button is pressed. It should print 'I got clicked'.
- When you run the app and click on the ball image you should see the words "I got clicked" into the console like this:


Step 5 - Randomise it

- Inside the curly braces of _BallState create a variable called ballNumber that can only hold integers (int), set it to equal 0.


- Instead of hard coding the ball image name that's being displayed on screen, use the ballNumber variable you just created instead.
- Add the dart:math library to your main.dart file.
- When the button gets pressed, use the Random() generator and the nextInt() method from the dart:math library to generate a new ballNumber between 0 - 4.
- print the ballNumber to the console when the button gets pressed.
- When you run the app and click on the ball image you should see random number between 0 - 4 printed in the console like this:

Step 6 - Update the State

- Change the random numbers that are generated for ballNumber from 0 - 4 to 1 - 5 to match our ball image names.
- Instead of using a hard coded image name to display the ball image that's shown on screen, use String interpolation and the ballNumber variable instead to make it show a random image.
- Use setState() to update the state of the image when the ballNumber variable updates.
- All going well, you should now have the full functionality of the Magic 8 Ball app, it should look like this:
