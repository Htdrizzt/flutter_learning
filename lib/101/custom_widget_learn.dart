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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFoodButton(
                  title: title, onPressed: () {  },

                ),
              ),
            )),
            const SizedBox(
              height: 200,
            ),
            CustomFoodButton(title: title, onPressed: () {  },)
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

class CustomFoodButton extends StatelessWidget
    with ColorUtility, PaddingUtility {
  CustomFoodButton({super.key, required this.title, required this.onPressed});
  final String title;
  final void Function () onPressed ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: redColor, shape: const StadiumBorder()),
        onPressed: onPressed,
        child: Padding(
          padding: normalPadding,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
