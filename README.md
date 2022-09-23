# Step 1 - Set Up The Project

Go to https://github.com/Neriquo/magic-8-ball-flutter and clone the starting project to your local computer. Open it using Android Studio and take a look around the project.

- There is an images folder with all the ball images you will need.
- There are a total of 5 images.

# Step 2 - Create a Stateless Widget

- Create a new [Stateless widget](https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html) called **BallPage** in your **main.dart** file.
- Replace the word **null** with the new Stateless Widget you created.

![image](https://www.evernote.com/shard/s331/res/e5d84aed-6d8e-f597-635c-1f8b1a295a28)

- Your **BallPage** should have a **Scaffold** with an **AppBar** and an empty **Container** as the body.
- The **AppBar** should have a  dark blue **backgroundColor** and a title that says 'Ask Me Anything'.
- The background your Scaffold should have a blue color.
- Once you run the app this is what you're aiming for:

![image](https://www.evernote.com/shard/s331/res/04580702-4c67-69ac-abde-1c2f5661ca63)

# Step 3 - Create a Stateful Widget

- Create a new [Stateful Widget](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html) called **Ball** in your **main.dart** file.
- Instead of **BallPage** having a body of **Container()** replace it with your new **Stateful Widget**.

![image](https://www.evernote.com/shard/s331/res/caf273b3-bd8b-9d0a-5a0d-72d49f66b2b3)

- Your **Ball** Stateful Widget should display a the **ball1.png** image. (You don't have to touch the pubscpec.yaml file)
- Make sure the image is **centred**.
- When you run the app this is what you're aiming for:

![image](https://www.evernote.com/shard/s331/res/bd9a834c-8185-4a45-308b-3ba0ec0385e5)

# Step 4 - Make it Interactive

- Use a [TextButton](https://api.flutter.dev/flutter/material/TextButton-class.html) Widget to make the Image **clickable**.
- Add a **print** statement that gets triggered when the button is pressed. It should print 'I got clicked'.
- When you **run** the app and click on the ball image you should see the words "I got clicked" into the console like this:

![image](https://www.evernote.com/shard/s331/res/1060e140-21fe-4f5c-a7d7-17d86d1e3b6f)

# Step 5 - Randomise it

- Inside the curly braces of **_BallState** create a [variable](https://dart.dev/guides/language/language-tour#variables) called **ballNumber** that can only hold **integers (int)**, set it to equal **0**.

![image](https://www.evernote.com/shard/s331/res/ab0fe40c-c264-efe6-bb6a-a996577fc526)

- Instead of hard coding the ball image name that's being displayed on screen, use the **ballNumber** variable you just created instead.
- Add the **dart:math** [library](https://api.dart.dev/stable/2.2.0/dart-math/dart-math-library.html) to your **main.dart** file.
- When the button gets **pressed**, use the **Random()** generator and the **nextInt()** method from the dart:math library to generate a new **ballNumber** between 0 - 4.
- print the ballNumber to the console when the button gets pressed.
- When you run the app and click on the ball image you should see random number between 0 - 4 printed in the console like this:

![image](https://www.evernote.com/shard/s331/res/829f836c-494a-566e-5720-12519cb2645d)

# Step 6 - Update the State

- Change the random numbers that are generated for **ballNumber** from **0 - 4 to 1 - 5** to match our ball image names.
- Instead of using a **hard coded** image name to display the ball image that's shown on screen, use [String interpolation](https://dart.dev/guides/language/language-tour#strings) and the **ballNumber** variable instead to make it show a random image.
- Use **setState()** to update the **state of the image** when the **ballNumber** variable updates.
- All going well, you should now have the full functionality of the Magic 8 Ball app, it should look like this:

![image](https://www.evernote.com/shard/s331/res/f30489b2-4757-3642-1b8f-d621c65a1edc)
