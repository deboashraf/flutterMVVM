import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
 final String text;
 final Color color;
  final void Function() onpressed;
  const CustomBotton({super.key,
  required this.text,
  required this.color,
  required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          fixedSize: MaterialStateProperty.all(const Size(250, 50)),

        ),
        onPressed: () {}, child: Text(text,style: TextStyle(
          color: Colors.black
        ),)),
    );
  }
}
