import 'package:flutter/material.dart';

class ResultBox extends StatelessWidget {
  final String result;

  const ResultBox({
    Key? key,
    required this.result,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffD6E0FB),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(result),
      ),
    );
  }
}
