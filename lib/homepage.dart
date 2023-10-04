import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? drodvalue ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dropdown"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: 
        
          Center(
              child: DropdownButton(
                items: const [
                  DropdownMenuItem(value: "one",child: 
                  Text("one")),
                  DropdownMenuItem(value: "two", child: 
                  Text("two")),
                  DropdownMenuItem(value: "three",child: 
                  Text("three")),
                  
                ],
            
            hint: Text("Select"),value:drodvalue,
            
            // icon: Icon(Icons.arrow_circle_down),
            // style: TextStyle(color: Colors.orange),
            onChanged:(value) {
              setState(() {
                drodvalue=value;
              });
            },
            
              ),
          ),
        
      
    );
  }
}
