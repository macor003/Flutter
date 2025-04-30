import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
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
          FloatingActionButton(
            backgroundColor: Colors.red.shade100,
            onPressed: decrement,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 10,),
          FloatingActionButton(
            onPressed: increment,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
