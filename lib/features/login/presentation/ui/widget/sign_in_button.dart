import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../domain/entities/user_credentials_entity.dart';
import '../../bloc/login_bloc.dart';

class SignInButton extends HookWidget {

  final ValueNotifier<bool> isValid;
  final String username;
  final String password;

  const SignInButton({
    Key? key,
    required this.isValid,
    required this.username,
    required this.password
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 44,
        child: FilledButton(
            onPressed: isValid.value ? () {
              FocusScope.of(context).unfocus();
              final userCredentials = UserCredentialsEntity(
                  username: username,
                  password: password
              );
              BlocProvider.of<LoginBloc>(context).add(
                  LoginEvent.userLogin(
                      userCredentials
                  )
              );
            } : null,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return const Color(0xFFD0D5DD);
                        }
                        return const Color(0xFF00B533);
                      }),
              shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                      (Set<MaterialState> states) {
                        return RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        );
                      }),
              textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                      (Set<MaterialState> states) {
                        return const TextStyle(
                            fontSize: 16,
                            color: Colors.white
                        );
                      }),
            ),
            child: const Text("Sign in")
        )
    );
  }
}
