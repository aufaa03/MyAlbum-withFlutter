import 'package:album_ku/indexPage.dart';
import 'package:flutter/material.dart';
import 'indexPage.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAlbum extends StatelessWidget {
  const MyAlbum({super.key});


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
              
           child:    ClipRRect(
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
                height: 30,
              ),
              Text(
                'AlbumKu',
                style: GoogleFonts.lato(
                  color: Colors.brown,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Dengan Foto,Bisa melihat masa lalu',
                style: GoogleFonts.lato(
                  color: Colors.brown,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20,),
               ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    
                    MaterialPageRoute(
                        builder: (context) => indexPage()), // Pindah ke Page1
                  );
                },
                child: Text('Start'),
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
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
