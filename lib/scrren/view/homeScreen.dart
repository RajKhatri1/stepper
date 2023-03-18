import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper/scrren/provider/homeProvider.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

HomeProvider? loginprovider;
HomeProvider? loginproviderTrue;

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {

    loginprovider = Provider.of(context,listen: false);
    loginprovider = Provider.of(context,listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("Stepper",
              style:
              TextStyle(color: Colors.white, letterSpacing: 1)),
        ),
        body: Stepper(
          currentStep: loginprovider!.i,
          onStepContinue: () => loginprovider!.onContinue(),
          onStepCancel: () => loginprovider!.onCancel(),
          steps: [
            Step(
              title:
              Text("SignUp", style: TextStyle(letterSpacing: 1,color: Colors.black)),
              content: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    style: TextStyle(letterSpacing: 1,color: Colors.grey),
                    decoration: InputDecoration(
                      labelText: "Name",
                      prefixIcon: Icon(Icons.person_outline,color: Colors.redAccent),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    style: TextStyle(letterSpacing: 1,color: Colors.grey),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.cyan,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email_outlined,color: Colors.redAccent),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    style: TextStyle(letterSpacing: 1,color: Colors.grey),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.cyan,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock_outline,color: Colors.redAccent),
                    ),
                  ),

                  SizedBox(height: 10,),
                  TextField(
                    style:  TextStyle(letterSpacing: 1,color: Colors.grey),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.cyan,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      prefixIcon: Icon(Icons.lock_person_outlined,color: Colors.redAccent),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title:
              Text("Login", style: TextStyle(letterSpacing: 1,color: Colors.black)),
              content: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    style: TextStyle(letterSpacing: 1,color: Colors.grey),
                    decoration: InputDecoration(
                      labelText: "User Name",
                      labelStyle: TextStyle(color: Colors.cyan,letterSpacing: 1),
                      prefixIcon: Icon(Icons.person_outline,color: Colors.redAccent),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.cyan,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock_outline,color: Colors.redAccent),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title:
              Text("Home", style:TextStyle(letterSpacing: 1,color: Colors.black)),
              content: Text("Login Successful",style: TextStyle(color: Colors.redAccent,letterSpacing: 1)),
            ),

          ],
        ),
      ),
    );
  }
}