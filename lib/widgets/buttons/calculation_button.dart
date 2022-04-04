import 'package:flutter/material.dart';

class CalculationButton extends StatelessWidget {
  final Function()? onTap;

  const CalculationButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff9F2DE4),
                    Color(0xffAAADF9),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  highlightColor: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(25),
                  onTap: onTap,
                  child: Center(
                    child: Text(
                      'Обчислити',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
