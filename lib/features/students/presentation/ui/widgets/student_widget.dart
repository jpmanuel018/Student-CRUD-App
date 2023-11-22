import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StudentWidget extends StatelessWidget {
  const StudentWidget({
    Key? key,
    required this.username,
    required this.name
  }) : super(key: key);

  final String username;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  blurRadius: 4.0
              )
            ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const Gap(5),
            Text(username)
          ],
        ),
      ),
    );
  }
}
