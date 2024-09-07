import 'package:flutter/material.dart';
import 'package:food_recipe_app/Screens/HomeScreen.dart';
import 'package:food_recipe_app/Screens/SignUpScreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

  TextEditingController email = TextEditingController();
  TextEditingController pwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.12),
                Text(
                    'Hello,',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: height * 0.005),
                Text(
                  'Welcome Back!',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: height * 0.05),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    'Email',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintText: 'Enter Email'
                  ),
                ),
                SizedBox(height: height * 0.03),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    'Password',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                TextField(
                  controller: pwd,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      hintText: 'Enter Password'
                  ),
                ),
                // SizedBox(height: height * 0.03),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'Forgot Password?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFFFF9C00),
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.04),
                SizedBox(
                  width: width,
                  child: FloatingActionButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18
                          ),
                        ),
                        SizedBox(width: width * 0.05),
                        Image.asset(
                            'assets/icons/arrowRight.png',
                          width: 20,
                        ),
                      ],
                    ),
                    backgroundColor: Color(0xFF129575),
                  ),
                ),
                SizedBox(height: height * 0.03),
                Center(
                  child: Image.asset(
                      'assets/images/line.png',
                    height: 17,
                  ),
                ),
                SizedBox(height: height * 0.02),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Image.asset(
                          'assets/icons/signIcon_Google.png',
                        fit: BoxFit.cover,
                        width: 44,
          
                      ),
                    ),
                    IconButton(
                        onPressed: (){}, 
                        icon: Image.asset(
                            'assets/icons/signIcon_Facebook.png',
                          width: 44,
                        ),
                    )
                  ],
                ),
                SizedBox(height: height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Don’t have an account?'),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Signupscreen()));
                      },
                      child: Text(
                          'Sign Up',
                        style: TextStyle(
                          color: Color(0xFFFF9C00)
                        ),
                      ),
                    )
                  ],
                  
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
