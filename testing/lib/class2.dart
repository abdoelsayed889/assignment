import 'dart:developer';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'hello',
          style: TextStyle(fontSize: 33),
        )),
        backgroundColor: Colors.grey,
        leading: Icon(Icons.menu),
        actions: [IconButton(onPressed: onpressed, icon: Icon(Icons.search)) ],
      ),
      body: 
      SingleChildScrollView // علشان نعمل سكرول لو الكلام اكبر من الشاشة
        (//scrollDirection: Axis.horizontal,دي علشان نحدد اتجاه الاسكرول دي افقي  
        //scrollDirection: Axis.vertical,راسي
          child:  Column
      ( mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
        children:
        [
          BuildTextStyle('login'),
          SizedBox(//علشان لو عايزين نسيب مسافات
            height: 20.0,//علشان في column بس لو في row هتبقي width
          ),
          TextFormField(
            decoration: InputDecoration(
             // keyboardType:TextInputType.emailAddress,//ايرور!!!!
              labelText: 'Email Address',
              prefixIcon: Icon(Icons.email),//prefixIcon علشان تبقي في اول textbox,, suffixIconلو عايزينها تبقي في اخره
              border: OutlineInputBorder(),
              
            ),
          ),
          SizedBox
          (
              height: 20.0,
          ),
           TextFormField
           (
             decoration: InputDecoration(
             // keyboardType:TextInputType.emailAddress,//ايرور!!!!
             // obscureText: true,  error!!!
              labelText: 'Password ',
              prefixIcon: Icon(Icons.lock),//prefixIcon علشان تبقي في اول textbox,, suffixIconلو عايزينها تبقي في اخره
              suffixIcon: Icon(Icons.remove_red_eye),
              border: OutlineInputBorder(),
           )
           ),
           SizedBox(
             height:20.0,
           ),
           Container(
             color: Colors.grey,
             width: double.infinity,
             child: MaterialButton(
               onPressed: (){},
               child: Text('LOGIN',style: TextStyle(fontSize: 25,color: Colors.white),),
               ),
           ),
           SizedBox(
             height:20.0,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('DON\'t have an account'),
               TextButton(onPressed: (){}, 
               child: Text('register now'))
             ],
           )
           ],
           
      )
      ),
      
      
      );
    
  }
  void onpressed()
  {
    print('hello');
  }
  Widget BuildTextStyle (String s)
  {
    return
    
    Center(child: 
       Text (s,style: TextStyle(color: Colors.black,fontSize: 33,backgroundColor: Colors.grey,fontWeight: FontWeight.bold),)
    );
  }
}
