import 'package:flutter/material.dart';
import 'package:untitled6/switch.dart';
class AlertScreen extends StatefulWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  _AlertScreenState createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      body: Center(
           child:  ElevatedButton(
               onPressed: (){
                 showDialog(
                     barrierDismissible: false,
                     barrierColor: Colors.tealAccent,
                     context: context,
                     builder: (context){
                       return AlertDialog(
                         title: Text('Do you want to exit?'),
                         content: Text('Thanks for using the app'),
                         backgroundColor: Colors.grey,
                         contentTextStyle: TextStyle(
                             color: Colors.pink
                         ),
                         titleTextStyle: TextStyle(
                             color: Colors.yellow
                         ),
                         actions: [
                           TextButton(
                             onPressed: () {
                               Navigator.of(context).push(MaterialPageRoute(
                                   builder: (context){
                                     return SwitchScreen();
                                   }));
                             },
                             child: Text('YES' ,
                               style: TextStyle(
                                   color:Colors.white

                               ),
                             ),
                           ),
                           TextButton(
                             onPressed: () {
                               Navigator.of(context).pop();
                             },
                             child: Text('NO' ,
                               style: TextStyle(
                                   color:Colors.white

                               ),
                             ),
                           ),
                         ],
                       );

                     }
                 );
               },
               child: Text('Show Alert')
           ),
         
        ),

    );
  }
}
