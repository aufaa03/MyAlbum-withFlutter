import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                elevation: 15,
                borderRadius: BorderRadius.circular(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'images/logo.jpg',
                    height: 300,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Good Bye!',
                style: GoogleFonts.lato(
                  color: Colors.brown,
                  fontSize: 50,
                ),
              ),
              Text(
                'Memories Saved Successfully',
                style: GoogleFonts.lato(
                  color: Colors.brown,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 30,),
               ElevatedButton(
                onPressed: () {
                 SystemNavigator.pop();
                },
                child: Text('Close Album'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  textStyle: TextStyle(
                    fontSize: 16,
                  ),
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
