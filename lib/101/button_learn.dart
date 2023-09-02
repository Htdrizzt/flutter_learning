import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.green;
            }
            return Colors.white;
          })),
          onPressed: () {},
          child: Text('Save', style: Theme.of(context).textTheme.titleLarge),
        ),
        ElevatedButton(onPressed: () {}, child: const Text('ElevatedButton')),
        IconButton(onPressed: () {}, icon: const Icon(Icons.abc_outlined)),
        FloatingActionButton(
          onPressed: () {
            // servise istek at
            //sayfanın rengini düzenle  örnek kullanımlar
          },
          child: const Icon(Icons.add),
        ),
        OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15)),
            onPressed: () {},
            child: const Text('OutlinedButton')),
        OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.abc),
            label: const Text('xdxd')),
        InkWell(
          onTap: () {},
          child: const Text('InkWell'),
        ),
        Container(
          height: 200,
          color: Colors.white,
        ),
        ElevatedButton(
            onPressed:(){},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30)))),
            child:  Padding(
              padding: const EdgeInsets.only(top: 10 ,bottom:10,right: 40,left: 40),
              child: Text('Place Bid',style: Theme.of(context).textTheme.headlineMedium),
            ),

        )
      ]),
    );
  }
}

// Borders circleborder() , RoundedRectangleBorder()
