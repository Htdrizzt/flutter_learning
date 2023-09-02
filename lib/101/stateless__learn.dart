import 'package:flutter/material.dart';

class StateLessLearn extends StatelessWidget {
  const StateLessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(),
      body :    Column(
        children: [
          
          const TitleTextWidget(text:"ali",),
          const TitleTextWidget(text: "veli",),
          _emptyBox(),
          const TitleTextWidget(text: "yaser",),
          _emptyBox(),
          const TitleTextWidget(text: "zehra",),

          const _CustomContainer(),
          _emptyBox()
        ]
      )
    );
  }

  // ignore: non_constant_identifier_names
  SizedBox _emptyBox() => const SizedBox(height: 20,); //basit şeyleri böyle yapabilirsin
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.red
      ),
    );
  }
}
  
class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key,required this.text});
  final String text ; 
  @override
  Widget build(BuildContext context) {
    return Text(text
          ,style:Theme.of(context ).textTheme.headlineMedium);
  }
}