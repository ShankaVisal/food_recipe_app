import 'package:flutter/material.dart';
import 'package:food_recipe_app/Screens/HomeScreen.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'LoginScreen.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pwd = TextEditingController();
  TextEditingController re_pwd = TextEditingController();
  bool isAccept = false;

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
                SizedBox(height: height * 0.05),
                Text(
                  'Create an Account',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: height * 0.005),
                Text(
                  'Let’s help you set up your account,\nit won’t take long.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: height * 0.03),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    'Name',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      hintText: 'Enter Name'
                  ),
                ),
                SizedBox(height: height * 0.03),
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
                ),              SizedBox(height: height * 0.03),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    'Confirm Password',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                TextField(
                  controller: re_pwd,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      hintText: 'Retype Password'
                  ),
                ),
                // SizedBox(height: height * 0.03),
                Row(
                  children: [
                    Checkbox(
                        value: isAccept,
                        onChanged: (bool? value){
                          setState(() {
                            isAccept = value!;
                            print(isAccept);
                            isAccept == true ? print("terms & conditions accepted") : print("terms & conditions declined");
                          });
                        }
                    ),
                    TextButton(
                      onPressed: (){
                        showMaterialModalBottomSheet(
                          context: context,
                          builder: (context) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Terms and Conditions',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    'By using this app, you agree to the following terms:',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(height: 8),
                                  _buildSection(
                                    title: '1. Content',
                                    content:
                                    'Recipes and content are for informational purposes. We do not guarantee accuracy, and users assume responsibility for using the information.',
                                  ),
                                  _buildSection(
                                    title: '2. User Contributions',
                                    content:
                                    'Any content you submit (e.g., recipes, comments) can be used by us within the app. You must ensure your submissions do not infringe on others\' rights.',
                                  ),
                                  _buildSection(
                                    title: '3. App Use',
                                    content:
                                    'You agree not to disrupt the app or upload harmful content.',
                                  ),
                                  _buildSection(
                                    title: '4. Liability',
                                    content:
                                    'We are not responsible for any issues resulting from using the app, including incorrect recipes or allergic reactions.',
                                  ),
                                  _buildSection(
                                    title: '5. Third-Party Links',
                                    content:
                                    'We are not responsible for content on third-party websites linked in the app.',
                                  ),
                                  _buildSection(
                                    title: '6. Changes',
                                    content:
                                    'We may update these terms, and continued use of the app means acceptance of the new terms.',
                                  ),
                                  _buildSection(
                                    title: '7. Contact',
                                    content: 'For questions, contact us @ shankavisal@gmail.com.',
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'I accept terms & Condition',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: isAccept == true ? Colors.black : Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Checkbox(
                                          value: isAccept,
                                          onChanged: (bool? value){
                                            setState(() {
                                              isAccept = value!;
                                              Navigator.pop(context);
                                              isAccept == true ? print("terms & conditions accepted") : print("terms & conditions declined");
                                            });
                                          }
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'Accept terms & Condition',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xFFFF9C00),
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
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
                          'Sign Up',
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
                SizedBox(height: height * 0.001),
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
                // SizedBox(height: height * 0.0005),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Already a member?'),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen()));
                      },
                      child: Text(
                        'Sign In',
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
  Widget _buildSection({required String title, required String content}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            content,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
