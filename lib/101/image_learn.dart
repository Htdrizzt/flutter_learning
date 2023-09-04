import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Column(
        children: [
          
          SizedBox(
            height: 100,
            width:100,
           child :PngImage(name: ImageItems().appleWithBook3,)),
           Image.network('https://www.pngmart.com/files/13/Rinnegan-PNG-Clipart.png',
           errorBuilder:(context,error,stackTrace)=> const Icon(Icons.abc_outlined)
           ),
           
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/image1.jpg";
  final String appleWithBook2 = "assets/png/image2.png";
  final String appleWithBook3 = "image2";
  final String appleWithBook4 = "image3";
}


class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath,fit: BoxFit.cover,);
  }

  String get _nameWithPath => 'assets/png/$name.png';
}