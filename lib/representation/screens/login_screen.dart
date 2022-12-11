import 'package:flutter/material.dart';
import 'package:travel_app/representation/screens/forgot_password_screen.dart';
import 'package:travel_app/representation/screens/main_app.dart';
import 'package:travel_app/representation/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static String routeName = '/login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 92, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 117, right: 117),
                      child: SizedBox(
                        width: 140,
                        child: Center(
                          child: Text(
                            'Sign in now',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 65, top: 12, right: 65),
                    child: SizedBox(
                      width: 244,
                      child: Center(
                        child: Text(
                          'Please sign in to continue our app',
                          style: TextStyle(
                            color: Color.fromRGBO(125, 132, 141, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 40, right: 20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Text(
                            '',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black12,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Email",
                                filled: true,
                                fillColor: Colors.black.withOpacity(0.035),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: BorderSide.none,
                                )),
                            controller: emailController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ("Please Enter Eamil!");
                              }
                              if (!RegExp(
                                      "^[a-zA-Z0-9+_.-]+@[a-z0-9A-Z.-]+.[a-z]")
                                  .hasMatch(value)) {
                                return ("Please Enter A Valid Email!");
                              }
                              return null;
                            },
                            onSaved: (value) {
                              emailController.text = value!;
                            },
                          ),
                          Text(
                            '',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Password",
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    // Based on passwordVisible state choose the icon
                                    _passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Theme.of(context).primaryColorDark,
                                  ),
                                  onPressed: () {
                                    // Update the state i.e. toogle the state of passwordVisible variable
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                ),
                                filled: true,
                                fillColor: Colors.black.withOpacity(0.035),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: BorderSide.none,
                                )),
                            controller: passwordController,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              RegExp regex = RegExp(r'^.{6,}$');
                              if (value!.isEmpty) {
                                return ("Password Required to Login!");
                              }
                              if (!regex.hasMatch(value)) {
                                return ("Invalid Password!");
                              }
                            },
                            onSaved: (value) {
                              passwordController.text = value!;
                            },
                            obscureText: !_passwordVisible,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 16, right: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(ForgotPasswordScreen.routeName);
                          },
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 40, right: 20),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.of(context)
                                  .pushNamed(MainApp.routeName);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent),
                          child: SizedBox(
                            width: 335,
                            height: 56,
                            child: Center(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(125, 132, 141, 1),
                                )),
                            SizedBox(
                              width: 4,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(SignupScreen.routeName);
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Or connect",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(125, 132, 141, 1),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/facebook.png',
                              width: 44,
                              height: 44,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              'assets/images/insta.png',
                              width: 44,
                              height: 44,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              'assets/images/twitter.png',
                              width: 44,
                              height: 44,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
