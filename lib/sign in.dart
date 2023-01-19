import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Challange extends StatefulWidget {
  const Challange({super.key});

  @override
  State<Challange> createState() => _ChallangeState();
}

class _ChallangeState extends State<Challange> {
  bool value = false;
TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Login to your account',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: const TextStyle(color: Colors.black, fontSize: 18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:  const BorderSide(color: Colors.grey, width: 2),
                    ),
                    prefixIcon: const Icon(Icons.email_outlined),
                    fillColor: Colors.grey[100],
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: const TextStyle(color: Colors.black, fontSize: 18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:  const BorderSide(color: Colors.grey, width: 2),
                    ),
                    prefixIcon: const Icon(Icons.lock_open),
                    fillColor: Colors.grey[100],
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      side: const BorderSide(color: Colors.green, width: 2.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      value: value,
                      onChanged: (value) {
                        setState(() {
                          this.value = value!;
                        });
                      },
                    ),
                    const Text(
                      'Remember me',
                      style: TextStyle(fontSize: 18),
                    ), //Checkbox
                  ], //<Widget>[]
                ),
                SizedBox(height: 30),
                Container(
                child: ElevatedButton(
                  onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text('Sign in'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                      onSurface: Colors.green,
                      padding: EdgeInsets.all(10.0),
                      minimumSize: Size(300, 50)),
                ),
              ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Forgot the password?',
                  style: TextStyle(color: Colors.green),
                ),
                const SizedBox(
                  height: 20,
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
                        'or continue with',
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
                  ],
          ),
        ),
      ),
    ),
    );    
  }
}



