import 'package:flutter/material.dart';
import 'page2.dart';
class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/alam1.jpg',
                height: 200,
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'images/alam2.jpg',
                height: 200,
              ),
               TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => page2()), // Pindah ke Page1
                  );
                },
                child: Text('Next'),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
