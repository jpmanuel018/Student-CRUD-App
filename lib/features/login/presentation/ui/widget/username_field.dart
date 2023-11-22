import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class UsernameField extends HookWidget {

  final TextEditingController usernameController;
  final ValueNotifier<bool> clearIconVisibility;

  const UsernameField({
    Key? key,
    required this.usernameController,
    required this.clearIconVisibility
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Username",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(8),
        TextFormField(
          controller: usernameController,
          cursorColor: Colors.black,
          style: const TextStyle(
            fontSize: 16,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(
                left: 14, top: 0, right: 30, bottom: 0),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 1, color: Color(0xFFD0D5DD)),
                borderRadius: BorderRadius.circular(8)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 1, color: Color(0xFFD0D5DD)),
                borderRadius: BorderRadius.circular(8)),
            suffixIcon: Visibility(
              visible: clearIconVisibility.value,
              child: IconButton(
                onPressed: () {
                  usernameController.text = '';
                },
                icon: SvgPicture.asset(
                  "assets/images/clear_text.svg",
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                ),
              ),
            )
          ),
        )
      ],
    );
  }
}
