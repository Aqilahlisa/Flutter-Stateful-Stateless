
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class One extends StatefulWidget {

  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
       body:Column(
       children: [
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
         Container(
            padding: const EdgeInsets.only(top:170),
            child:const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('images/profil.jpg'),
            
            ),
          ),
         SizedBox(
            height: 20, // <-- space
          ),
          const Text(
          "Aqilah Noer Khalishah",
          textAlign: TextAlign.center,
          textScaleFactor: 1.0,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 25.0
          ),
        ),
        SizedBox(
            height: 5, // <-- space
          ),
        const Text(
          "Flutter Developer",
          textAlign: TextAlign.center,
          textScaleFactor: 1.0,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5,
            fontSize: 20.0
          ),
        ),
        Divider(
          color: Colors.grey,
          height: 20,
          thickness: 1,
          indent: 150,
          endIndent: 150,
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
           shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
          child: ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.pink[100],
            ),
            title:Text('081584450085') ,
          ),
        ),
         Card(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
           shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
          child: ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.pink[100],
            ),
            title:Text('aqilahlisa26@gmail.com') ,
          ),
        )
        ]  
           
      )
    );
  }
}
  