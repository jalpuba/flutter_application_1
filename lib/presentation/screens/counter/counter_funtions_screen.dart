import 'package:flutter/material.dart';

class CounterFuntionsScreen extends StatefulWidget {
  const CounterFuntionsScreen({super.key});

  @override
  State<CounterFuntionsScreen> createState() => _CounterFuntionsScreenState();
}

class _CounterFuntionsScreenState extends State<CounterFuntionsScreen> {

  int clickCounter=0;

  @override 
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 27, 184, 184),
        title: const Text('Par-0'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded), 
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });  

          }),
        ],
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                setState(() {
                  clickCounter =0;
                });
              }, 
            ),

            const SizedBox(height: 10),

            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                if(clickCounter == 0) return;
                setState(() {
                  clickCounter--;
                });
              },
            
            ),

            const SizedBox(height: 10),
            
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
            ),
          ],
        )
      );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key, 
    required this.icon, 
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 5,
      backgroundColor: const Color.fromARGB(255, 97, 208, 228),
      splashColor: const Color.fromARGB(255, 243, 159, 33),
      foregroundColor: const Color.fromARGB(255, 227, 228, 230),
      
      onPressed: onPressed,
      child:  Icon(icon),
      //backgroundColor: Color.fromARGB(255, 147, 149, 150), 
    );
  }
}