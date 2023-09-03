import 'package:cbseapp/pages/loggedin.dart';
import 'package:flutter/material.dart';
import 'pages/loginpage.dart';
import 'pages/signup.dart';
import 'utils/routes.dart'; // Import your routes file

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MCQ App',
      theme: ThemeData.dark(),
      initialRoute: MyRoutes.homeRoute, // Set the initial route
      routes: {
        MyRoutes.homeRoute: (context) => MyHomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.signupRoute: (context) => SignupPage(),
        MyRoutes.loggedinRoute: (context) => LoggedInPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Text("Class 10 CBSE"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height *
                    0.3, // Adjust the fraction as needed
                child: Image.asset(
                  'assets/images/cbselogo.png', // Your app logo
                  fit: BoxFit
                      .contain, // This ensures the image fits inside the container
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to Class 10 MCQ Challenger',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Prepare for your exams with interactive quizzes and practice questions.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, MyRoutes.loginRoute); // Navigate to login screen
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple[800], // Background color
                  onPrimary: Colors.white, // Text color
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // Rounded corners
                  ),
                  elevation: 3, // Button elevation
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to SignupPage or implement your logic
                  Navigator.pushNamed(context, MyRoutes.signupRoute);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple[800], // Background color
                  onPrimary: Colors.white, // Text color
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // Rounded corners
                  ),
                  elevation: 3, // Button elevation
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
