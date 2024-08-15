import 'package:api_demo/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Manage Expense While You Travel🤑',
            style: TextStyle(
              fontSize:20,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey
            ),),
            const SizedBox(height: 5,),
        
            Lottie.asset('lib/assets/homep.json',
            height: 300,
            width: 400),
            
            const SizedBox(height: 5,),
        
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
              child: Container(
                width: 120,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12),
              
                ),
                child: Center(
                  child: Text('Lets Start',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}