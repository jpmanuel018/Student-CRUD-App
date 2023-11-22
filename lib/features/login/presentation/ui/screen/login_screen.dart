import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:student_crud_app/core/hive/model/access_token.dart';
import 'package:student_crud_app/features/login/data/datasources/local/auth_service.dart';
import 'package:student_crud_app/features/login/presentation/ui/widget/password_field.dart';
import 'package:student_crud_app/features/login/presentation/ui/widget/sign_in_button.dart';
import 'package:student_crud_app/features/login/presentation/ui/widget/username_field.dart';
import 'package:student_crud_app/features/students/presentation/ui/screens/student_list_screen.dart';

import '../../bloc/login_bloc.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final AuthService authService = AuthService();

    final passwordVisibility = useState(true);
    final clearIconVisibility = useState(false);
    final showHidePasswordIconVisibility = useState(false);
    final isValid = useState(false);
    final usernameController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');
    final usernameValue = useState('');
    final passwordValue = useState('');

    useEffect(() {
      usernameController.addListener(() {
        usernameValue.value = usernameController.text;
        clearIconVisibility.value = usernameController.text.isNotEmpty;
        isValid.value = usernameController.text.isNotEmpty && passwordController.text.isNotEmpty;
      });
      passwordController.addListener(() {
        passwordValue.value = passwordController.text;
        showHidePasswordIconVisibility.value = passwordController.text.isNotEmpty;
        isValid.value = usernameController.text.isNotEmpty && passwordController.text.isNotEmpty;
      });
    },[
      usernameController,
      passwordController
    ]);

    return  BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(barrierDismissible: false,
              context:context,
              builder:(BuildContext context){
                return Center(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 2
                          ),
                        ]
                    ),
                    child: const CircularProgressIndicator(
                      color: Color(0xFF00B533),
                    ),
                  ),
                );
              },
            );
          },
          success: (accessToken) async {
            Navigator.pop(context);
            authService.saveToken(AccessToken(token: 'Bearer ${accessToken.replaceAll('"', '')}'));
            // ScaffoldMessenger.of(context).showSnackBar(
            //     SnackBar(
            //         content: Text("${await authService.getToken()}")
            //     )
            // );
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const StudentListScreen()),
            );
          },
          error: (exception) {
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text('Error: ${exception.response}')
                )
            );
          },
        );
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Student CRUD App",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const Gap(40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UsernameField(
                          usernameController: usernameController,
                          clearIconVisibility: clearIconVisibility,
                        ),
                        const Gap(20),
                        PasswordField(
                          passwordController: passwordController,
                          showHidePasswordIconVisibility: showHidePasswordIconVisibility,
                          passwordVisibility: passwordVisibility,
                        ),
                        const Gap(40),
                        SignInButton(
                          isValid: isValid,
                          username: usernameValue.value,
                          password: passwordValue.value,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
