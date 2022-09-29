
import 'package:flutter/material.dart';
import 'package:hello/bottom/One.dart';
import 'package:hello/bottom/Three.dart';
import 'package:hello/bottom/Two.dart';

// ignore: use_key_in_widget_constructors
class BottomNavi extends StatefulWidget {
  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {

  int currentIndex = 0;
  final List<Widget> body =[
    One(),
    Two(),
    Three()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
      items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.pets, color:Colors.pink[100],),
            label: 'Home',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.cloud, color:Colors.blue[100],),
            label: 'Daily',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined
            , color:Colors.purple[100]),
            label: 'Palette',
          ),
        ],
      ),
      
    );
  }
  void ontap(int index){
  setState(() {
    currentIndex = index;

  });
}
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Image.network(
          'https://picsum.photos/200/300',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}

