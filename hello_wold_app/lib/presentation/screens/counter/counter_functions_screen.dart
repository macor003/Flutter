import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int counter = 0;
  void increment() {
    setState(() {
      counter++;
    });
  }
  void decrement() {
    setState(() {
      counter--;
    });
  }
  
  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: reset,
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counter', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100)), 
            Text(counter == 1 ? 'Click' : 'Clicks', style: TextStyle(fontSize: 25))
          ]
        )
      ),
      floatingActionButton: Column(
        children: [
          const Spacer(),
          CustomButton(icon: Icons.remove, 
              onPressed: (){
                if(counter > 0){
                  decrement();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Counter cannot be negative'),
                      duration: Duration(milliseconds: 1300),
                    )
                  );
                }
              }, 
              backgroundColor: Colors.red.shade100),
          const SizedBox(height: 10,),
          CustomButton(icon: Icons.add, onPressed: increment),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  
  const CustomButton({
    super.key, 
    required this.icon,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backgroundColor ?? Colors.green.shade200,
      foregroundColor: foregroundColor ?? Colors.black,
      enableFeedback: true,
      elevation: 4,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
