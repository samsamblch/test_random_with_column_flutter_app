 
import 'package:flutter/material.dart'; 
import 'package:get/get.dart';
// import 'package:test_random_with_column_flutter_apl/main.dart';


class Page2 extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: const Text('GeekforGeeks GFG'), 
        backgroundColor: Colors.green, 
      ), 
     body: Center( 
       child: Column( 
         mainAxisAlignment: MainAxisAlignment.center, 
         children: [ 
           const Text("Page 2", textScaleFactor: 2,), 
           Container( 
              child: ElevatedButton( 
                child: const Text("Navigate to previous screen"), 
                onPressed: ()=> Get.back() 
              ), 
            ), 
         ], 
       ), 
      ), 
    ); 
  } 
}