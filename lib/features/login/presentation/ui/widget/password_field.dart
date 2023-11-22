import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class PasswordField extends HookWidget {

  final TextEditingController passwordController;
  final ValueNotifier<bool> showHidePasswordIconVisibility;
  final ValueNotifier<bool> passwordVisibility;

  const PasswordField({
    Key? key,
    required this.passwordController,
    required this. showHidePasswordIconVisibility,
    required this. passwordVisibility
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // final passwordVisibility = useState(true);
    // final clearIconVisibility = useState(false);
    // final showHidePasswordIconVisibility = useState(false);
    // final isValid = useState(false);
    // final emailController = useTextEditingController(text: '');
    // final passwordController = useTextEditingController(text: '');
    // final emailValue = useState('');
    // final passwordValue = useState('');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Password",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(8),
        TextFormField(
          controller: passwordController,
          obscureText: passwordVisibility.value,
          cursorColor: const Color(0xFFD0D5DD),
          style: const TextStyle(
            color: Color(0xFF667085),
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
              visible: showHidePasswordIconVisibility.value,
              child: IconButton(
                onPressed: () {
                  if (passwordVisibility.value == true) {
                    passwordVisibility.value = false;
                  } else {
                    passwordVisibility.value = true;
                  }
                },
                icon: SvgPicture.asset(
                  "assets/images/hide.svg",
                  width: 24,
                  height: 24,
                  fit: BoxFit.scaleDown,
                ),
              ),
            )
          ),
        )
      ],
    );
  }
}
