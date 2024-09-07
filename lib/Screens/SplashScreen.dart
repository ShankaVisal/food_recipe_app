import 'package:flutter/material.dart';
import 'package:food_recipe_app/Screens/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/splashScreen.png'),
          fit: BoxFit.fill)
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(height: height * 0.125),
                  Image.asset('assets/images/logoIcon.png',width: width * 0.55),
                ],
              ),
            ),

            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                      "Get\nCooking",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Text(
                      'Simple way to find Tasty Recipe',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: height * 0.08),
                  SizedBox(
                    width: width * 0.7,
                    child: FloatingActionButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen(),));
                        },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'Start Cooking',
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
                  SizedBox(height: height * 0.06),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
