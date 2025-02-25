import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Detail extends StatefulWidget {
  final int imageIndex; // Mendapatkan index gambar yang akan ditampilkan
  Detail({required this.imageIndex});

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Detail> {
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

  final CarouselSliderController _carouselController =
      CarouselSliderController(); // Mengontrol pergerakan carousel
  late int _currentIndex; // Menyimpan posisi gambar yang ditampilkan

  @override
  void initState() {
    super.initState();
    // Set nilai initial currentIndex dari widget.imageIndex
    _currentIndex = widget.imageIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Row(
              children: [
                IconButton(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_sharp,
                        color: Colors.white, size: 30)),
              ],
            ),
                Text(
                  'MyAlbum',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
            SizedBox(height: 10),
            //container untuk menampilkan gambar
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // CarouselSlider untuk menampilkan gambar
                    CarouselSlider(
                      items: images.map((imagePath) {
                        //Mengubah daftar gambar menjadi widget Container dengan BoxDecoration.
                        return Container(
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                image: AssetImage(imagePath),
                                fit: BoxFit.cover),
                          ),
                        );
                      }).toList(),
                      carouselController:
                          _carouselController, //menghubungkan dengan controller
                      options: CarouselOptions(
                        height: 400.0,
                        enlargeCenterPage:
                            true, //Memperbesar gambar yang sedang ditampilkan.
                        autoPlay: false, //memplay gambar secara otomatis.
                        aspectRatio: 16 / 9,
                        initialPage: _currentIndex,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex =
                                index; //mengupdate _currentIndex ketika gambar berubah dengan nilai index yang baru.
                          });
                        },
                      ),
                    ),
                    Positioned(
                      left: 10,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios,
                            size: 30, color: Colors.white),
                        onPressed: () {
                          _carouselController
                              .previousPage(); // Tidak perlu argumen tambahan
                        },
                      ),
                    ),
                    Positioned(
                      right: 10,
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios,
                            size: 30, color: Colors.white),
                        onPressed: () {
                          _carouselController.nextPage();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
