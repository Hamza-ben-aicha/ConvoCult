import 'package:convocult/Constants/Constants.dart';
import 'package:convocult/generated/l10n.dart';
import 'package:convocult/screens/ForgetPasswordPage.dart';
import 'package:convocult/screens/SignUpPage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget{
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();


    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                    S.of(context).welcome,
                    textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                    SizedBox(height: 40),
                    Container(
                      height:150 ,
                      child:Image.asset("assets/images/convo_cult_icon.png") ,
                    ),],
                ),
                SizedBox(height: 20),
                Text(
                  S.of(context).signin,
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: S.of(context).email,
                      filled: true,
                      fillColor: SECONDARY_COLOR,
                      suffixIcon: Icon(Icons.email, color: PRIMARY_COLOR),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: FIFTH_COLOR,width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: THIRD_COLOR,width: 2),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
            
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: S.of(context).password,
                      filled: true,
                      fillColor: SECONDARY_COLOR ,
                      suffixIcon: Icon(Icons.lock, color: PRIMARY_COLOR),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: FIFTH_COLOR,width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: THIRD_COLOR ,width: 2),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    obscureText: true,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child : Align(
                      alignment: Alignment.centerLeft, // Align the button to the start (left)
                      child: TextButton(
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Forgetpasswordpage()),
                          );
                        },
                        child: Text(
                          S.of(context).forget_password,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                ),
            
                //// sign in button
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                      width: double.infinity,
                      child:TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: THIRD_COLOR, // Background color
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(26),
                              topRight: Radius.circular(26),
                              bottomLeft: Radius.circular(26),
                            ),
                          ),
                        ),
                        onPressed: () {
                          print('Email: ${emailController.text}');
                          print('Password: ${passwordController.text}');
                          },
                        child: Text(S.of(context).signin,
                          style: TextStyle(fontSize: 20,color: PRIMARY_COLOR),
                        ),
                      ),
                  ),
                ),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: S.of(context).dont_have_account,
                    style: TextStyle(color: Colors.grey),
                    children: <TextSpan>[
                      TextSpan(
                        text: S.of(context).signup,
                        style: TextStyle(
                          color: FIFTH_COLOR, // Color for the "Sign Up" part
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Handle the onPressed event
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => SignUpPage()),
                            );
                          },
                      ),
                    ],
                  ),
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
