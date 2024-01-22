import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();

  bool passEqual(String pass1, String pass2) {
    return (pass1 != pass2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              TextField(
                controller: usernameController,
                style: TextStyle(color: Color(0xFF27DEBF)),
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Color(0xFF27DEBF)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF27DEBF)),
                    borderRadius: BorderRadius.circular(20.0), // Radius untuk border
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF27DEBF)),
                    borderRadius: BorderRadius.circular(20.0), // Radius untuk border
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: passwordController,
                obscureText: true, // Untuk input password
                style: TextStyle(color: Color(0xFF27DEBF)),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Color(0xFF27DEBF)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF27DEBF)),
                    borderRadius: BorderRadius.circular(20.0), // Radius untuk border
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF27DEBF)),
                    borderRadius: BorderRadius.circular(20.0), // Radius untuk border
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: rePasswordController,
                obscureText: true, // Untuk input password
                style: TextStyle(color: Color(0xFF27DEBF)),
                decoration: InputDecoration(
                  labelText: 're-Password',
                  labelStyle: TextStyle(color: Color(0xFF27DEBF)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF27DEBF)),
                    borderRadius: BorderRadius.circular(20.0), // Radius untuk border
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF27DEBF)),
                    borderRadius: BorderRadius.circular(20.0), // Radius untuk border
                  ),
                ),
              ),
              SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {
                  String username = usernameController.text;
                  String password = passwordController.text;
                  String rePassword = rePasswordController.text;

                  // Lakukan apa pun yang perlu dilakukan dengan nilai username dan password
                  print('Username: $username');
                  print('Password: $password');
                  print('rePassword: $rePassword');

                  if (passEqual(password, rePassword)){
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Text('Password is not match!', style: TextStyle(color: Colors.white),),
                            content: Text('Please match re-Password with Password.', style: TextStyle(color: Colors.white),),
                            backgroundColor: Color(0xFF1A1A1A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Color(0xFF27DEBF)),
                            ),
                            actions: <Widget>[
                              TextButton(onPressed: (){
                                Navigator.of(context).pop();
                              }, child: Text('OK')),
                            ],
                          );
                        });
                  }
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(350, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF27DEBF)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
