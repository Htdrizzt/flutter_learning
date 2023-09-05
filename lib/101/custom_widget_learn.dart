import 'package:flutter/material.dart';

class CustomWidgetLeran extends StatelessWidget {
  const CustomWidgetLeran({
    super.key,
  });
  final String title = 'food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFootButton(
                  title: title,
                ),
              ),
            )),
            const SizedBox(
              height: 200,
            ),
            CustomFootButton(title: title)
          ],
        ));
  }
}

mixin class ColorUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

mixin class PaddingUtility {
  final normalPadding = const EdgeInsets.all(8.0);
  final normalPadding2x = const EdgeInsets.all(16.0);
}

class CustomFootButton extends StatelessWidget
    with ColorUtility, PaddingUtility {
  CustomFootButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: redColor, shape: const StadiumBorder()),
        onPressed: () {},
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
        ));
  }
}
