import 'package:flutter/material.dart';

class Counterpage extends StatefulWidget {
  const Counterpage({super.key});

  @override
  State<Counterpage> createState() => _CounterpageState();
}

class _CounterpageState extends State<Counterpage> {
  //  Text Editinh Controler
  TextEditingController MyController = TextEditingController();

    String greetingMsg = "";

    void greetUser (){
    
    setState(() {
      greetingMsg = "Hello "+ MyController.text;
    });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMsg),
              TextField(
                controller: MyController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  hintText: "Type Your Name"
                ),
              ),
        
              ElevatedButton(onPressed: greetUser, child: Text("Tap"))
            ],
          ),
        
        
        ),
      ),
    );
  }
}



