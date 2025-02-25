import 'package:flutter/material.dart';
import 'pagelast.dart';
import 'album.dart';
import 'detail.dart';

class indexPage extends StatelessWidget {
  indexPage({super.key});

   final List<String> images = [
    'images/alam1.jpg',
    'images/alam2.jpg',
    'images/alam3.jpg',
    'images/alam4.jpg',
    'images/alam5.jpg',
    'images/alam6.jpg',
    'images/alam7.JPG',
    'images/alam8.jpg',
    'images/alam9.jpg',
    'images/alam10.jpg',
    'images/alam11.jpg',
    'images/alam12.jpg',
    'images/alam13.jpg',
    'images/alam14.jpg',
    'images/alam15.jpg',
    'images/alam16.jpg',
    'images/alam17.jpg',
    'images/alam18.jpg',
    'images/alam19.jpg',
    'images/alam20.jpg',
    'images/alam21.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Stack(
          children: [
            // GridView Builder untuk menampilkan gambar
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Text(
                  'MyAlbum',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        String imagesPath = images[index];
                        return RawMaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Detail(
                                        imageIndex: index,
                                      )), // Pindah ke Page2
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(imagesPath),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            // Positioned(
            //   right: 20,
            //   bottom: 30,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => PageLast()), // Pindah ke Page2
            //       );
            //     },
            //     child: Text('Next'),
            //     style: ElevatedButton.styleFrom(
            //       padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            //       textStyle: TextStyle(
            //         fontSize: 16,
            //       ),
            //       backgroundColor: Colors.lightBlue,
            //       foregroundColor: Colors.white,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //     ),
            //   ),
            // ),
            // Positioned(
            //   left: 20,
            //   bottom: 30,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => Page1()), // Pindah ke myalbum
            //       );
            //     },
            //     child: Text('Back'),
            //     style: ElevatedButton.styleFrom(
            //       padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            //       textStyle: TextStyle(
            //         fontSize: 16,
            //       ),
            //       backgroundColor: Colors.lightBlue,
            //       foregroundColor: Colors.white,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
