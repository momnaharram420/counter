import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',

    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;
  final TextEditingController _controller = TextEditingController();

  void _incrementCounter() {
    setState(() {
      if (_count < 1000) {
        _count++;
        _controller.text = _count.toString();
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_count > 0) {
        _count--;
        _controller.text = _count.toString();
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _count = 0;
      _controller.text = _count.toString();
    });
  }

  @override
  void initState() {
    super.initState();
    _controller.text = _count.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.blueGrey,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color:  Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(4, 4),
                blurRadius: 10,
              ),
            ],
          ),
          height: 400,
          width: 360,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  ' Counter',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 180,
                  child: TextField(
                    controller: _controller,
                    // Disables editing
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.white, // Border color
                          width: 1, // Border width
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.blueGrey,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.blueGrey,
                          width: 1,
                        ),
                      ),
                      contentPadding: const EdgeInsets.all(10),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                FloatingActionButton(
                  backgroundColor:  Colors.blueGrey,
                  onPressed: _resetCounter,
                  child: const Icon(
                    Icons.refresh,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(4, 4),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 40,
                        ),
                        onPressed: _decrementCounter,
                      ),
                    ),
                    const SizedBox(width: 60),

                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(4, 4),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 40,
                        ),
                        onPressed: _incrementCounter,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
