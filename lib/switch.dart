import 'package:flutter/material.dart';
class SwitchScreen extends StatefulWidget {


  @override
  _SwitchScreenState createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool notify = false;
  double val = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
        centerTitle: true,
      ),
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('هل تريد تفعيل الاشعارات؟'),
              Switch(
                activeColor: Colors.red,
                  activeTrackColor:Colors.green ,
                  inactiveTrackColor: Colors.black,
                  inactiveThumbColor: Colors.yellow,

                  value: notify,
                  onChanged: (val){
                   setState(() {
                     notify= val;
                   });
                  }),


            ],
            ),
            SizedBox(height: 30,),
            Slider(
                min: 0.0,
                max: 100.0,
                value: val,

                onChanged: (str){

                  setState(() {

                    val= str;
                    print(val);
                  });
                }),
          ],
        ),

    );
  }
}
