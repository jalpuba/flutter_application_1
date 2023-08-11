import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter=0;

  @override 
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Par-0'),
        //backgroundColor: Color.fromARGB(255, 46, 6, 48),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text('$clickCounter',
                 style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
              Text('Click${clickCounter == 1 ? '':'s'}', 
                 style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600))
       
       // otra forma de hacerlo: if clasico:       
       //       if(clickCounter==1)
       //       const Text('Click', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
       
       //       if(clickCounter !=1 )
       //       const Text('Clicks', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),



            ],
          )
        ),
        floatingActionButton: FloatingActionButton(

          //OTRA OPCION PARA EVENTOS onPressef
          //
          onPressed: () {
            setState(() {
              clickCounter++;              
            });
            
          },
          child: Icon(Icons.plus_one),
          //backgroundColor: Color.fromARGB(255, 147, 149, 150), 
          ),
      );
  }
}