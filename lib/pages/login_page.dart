import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('lib/assets/logicon.json',
            height: 200,
            width: 400),
            Text('Welcome back youve been missed!'),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hoverColor: Colors.amber,
                  hintText:'Enter your username',
                  prefixIcon: Icon(Icons.mail_sharp)
                ),
              ),
            ),
           //  const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 0),
              child: TextFormField(
                decoration:const InputDecoration(
                  border: OutlineInputBorder(),
                  hoverColor: Colors.amber,
                  hintText:'Enter your password',
                  prefixIcon: Icon(Icons.key)
                ),
              ),
            ),
           // const SizedBox(height: 10,),
         const  Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Not a member ?'),
                  Text('Register now',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent
                  ),)
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: 150,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8)
                ,color: Colors.blueAccent,
              ),
              child:const Center(
                child: Text('Login',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}