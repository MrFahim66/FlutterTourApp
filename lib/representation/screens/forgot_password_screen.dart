import 'package:flutter/material.dart';
import 'package:travel_app/representation/screens/login_screen.dart';
import 'package:travel_app/representation/widgets/back_button_widget.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  static String routeName = '/forgot_password_screen';

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  static String routeName = '/forgot_password_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              // margin: EdgeInsets.fromLTRB(0, 140, 0, 0),
              padding: EdgeInsets.fromLTRB(20, 24, 20, 0),

              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      BackButtonWidget(
                        mode: "dark",
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(LoginScreen.routeName);
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 230,
                    height: 34,
                    child: Center(
                      child: Text(
                        'Forgot password',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 257,
                          child: Text(
                            'Enter your email account to reset your password',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(125, 132, 141, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Form(
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
                              hintText: "Enter your email address",
                              filled: true,
                              fillColor: Colors.black.withOpacity(0.035),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide.none,
                              )),
                          controller: emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("Vui lòng nhập Email");
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print("Đăng nhập thành công");
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent),
                        child: SizedBox(
                          width: 335,
                          height: 56,
                          child: Center(
                            child: Text(
                              'Reset Password',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
