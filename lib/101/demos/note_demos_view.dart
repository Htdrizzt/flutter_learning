import 'package:flutter/material.dart';
import 'package:learning_101/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final _title = 'Create first eye power';
  final _description = 'Learn the best eye powers';
  final String _footerNote='İmport Notes';
  final String _buttonText='Create Eye Power';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      backgroundColor:Colors.blueGrey[500],
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleWithBook4),
            _TitleWidget(title: _title),
             Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubtitleWidget(title: _description * 9),
            ),
             const Spacer(),
            _createButton(),
            TextButton(onPressed: (){}, child:Text(_footerNote)),
            const SizedBox(height:ButtonHeight.buttonHeightValue,)
          ],
        ),
      )
    );
  }

  ElevatedButton _createButton() => ElevatedButton(onPressed: (){}, child:    SizedBox(height:ButtonHeight.buttonHeightValue, child: Center (child: Text(_buttonText))) ,);
}

class _SubtitleWidget extends StatelessWidget {
  // ignore: unused_element
  const _SubtitleWidget({required this.title, this.textAlign =TextAlign.center});
  final TextAlign? textAlign;
    final String title ;

  @override
  Widget build(BuildContext context) {
    return Text(title,
    textAlign:textAlign,
    style:Theme.of(context).textTheme.titleMedium?.copyWith(color:Colors.black,fontWeight:FontWeight.w400) ,);
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
     title,
            style:Theme.of(context).textTheme.headlineLarge?.copyWith(color:Colors.black,fontWeight:FontWeight.w500),
            );
  }
}


class PaddingItems {
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeight {
 static const double buttonHeightValue = 50;
}