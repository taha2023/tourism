import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tourism/login.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Let’s you in',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Continue with Facebook',
                    hintStyle: const TextStyle(color: Colors.black, fontSize: 18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:  const BorderSide(color: Colors.grey, width: 2),
                    ),
                    prefixIcon: const Icon(Icons.facebook),
                    fillColor: Colors.grey[100],
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Continue with whatsapp',
                    hintStyle: const TextStyle(color: Colors.black, fontSize: 18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:  const BorderSide(color: Colors.grey, width: 2),
                    ),
                    prefixIcon: const Icon(Icons.whatsapp),
                    fillColor: Colors.grey[100],
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Continue with Apple',
                    hintStyle: const TextStyle(color: Colors.black, fontSize: 18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:  const BorderSide(color: Colors.grey, width: 2),
                    ),
                    prefixIcon: const Icon(Icons.apple),
                    fillColor: Color.fromARGB(255, 247, 244, 244),
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.6,
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'or',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.6,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                child: ElevatedButton(
                  onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text('Sign in with password'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                      onSurface: Colors.green,
                      padding: EdgeInsets.all(25.0),
                      minimumSize: Size(400, 50)),
                ),
              ),
              SizedBox(height: 30),
              Text('Don’t have an account? Sign up'),
              ]
      ),
          ),
        ),
      ),
    );    
  }
}


