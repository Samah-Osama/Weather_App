import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.text,
    required this.time,
    required this.icon,
    @required this.iconColor,
  });
  final String text;
  final String time;
  final IconData icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 170,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)
          // color: Color.fromARGB(223, 53, 149, 228),
          ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Icon(
            icon,
            color: iconColor,
            size: 40,
          ),
          Text(time,
              style:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
