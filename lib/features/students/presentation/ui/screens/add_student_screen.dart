import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:student_crud_app/features/students/domain/entities/add_student_entity.dart';
import 'package:student_crud_app/features/students/presentation/bloc/student_bloc.dart';
import 'package:student_crud_app/features/students/presentation/ui/screens/student_list_screen.dart';
import 'package:student_crud_app/features/students/presentation/ui/widgets/student_form_field.dart';

import '../../../../../di/injection_container.dart';

class AddStudentScreen extends HookWidget {
  const AddStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isValid = useState(false);
    final nameController = useTextEditingController(text: '');
    final usernameController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');
    final emailController = useTextEditingController(text: '');
    final name = useState('');
    final username = useState('');
    final password = useState('');
    final email = useState('');

    useEffect(() {
      nameController.addListener(() {
        name.value = nameController.text;
        isValid.value = nameController.text.isNotEmpty &&
            usernameController.text.isNotEmpty &&
            passwordController.text.isNotEmpty &&
            emailController.text.isNotEmpty;
      });
      usernameController.addListener(() {
        username.value = usernameController.text;
        isValid.value = nameController.text.isNotEmpty &&
            usernameController.text.isNotEmpty &&
            passwordController.text.isNotEmpty &&
            emailController.text.isNotEmpty;
      });
      passwordController.addListener(() {
        password.value = passwordController.text;
        isValid.value = nameController.text.isNotEmpty &&
            usernameController.text.isNotEmpty &&
            passwordController.text.isNotEmpty &&
            emailController.text.isNotEmpty;
      });
      emailController.addListener(() {
        email.value = emailController.text;
        isValid.value = nameController.text.isNotEmpty &&
            usernameController.text.isNotEmpty &&
            passwordController.text.isNotEmpty &&
            emailController.text.isNotEmpty;
      });
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Student"),
        centerTitle: true,
        backgroundColor: const Color(0xFF00B533),
        titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20
        ),
        leading: const BackButton(
            color: Colors.white
        ),
      ),
      body: BlocProvider(
        create: (context) => sl<StudentBloc>(),
        child: BlocListener<StudentBloc, StudentState> (
          listenWhen: (_, state) => state.maybeWhen(
            loading: () => true,
            addSuccess: () => true,
            error: (_) => true,
            orElse: () => false,
          ),
          listener: (_, state) {
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
              addSuccess: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Student Added Successfully')
                    )
                );
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
          child: Builder(
            builder: (context) {
              return SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      StudentFormField(
                        controller: nameController,
                        label: "Name",
                        obscureText: false,
                      ),
                      const Gap(15),
                      StudentFormField(
                        controller: usernameController,
                        label: "Username",
                        obscureText: false,
                      ),
                      const Gap(15),
                      StudentFormField(
                        controller: passwordController,
                        label: "Password",
                        obscureText: true,
                      ),
                      const Gap(15),
                      StudentFormField(
                        controller: emailController,
                        label: "Email",
                        obscureText: false,
                      ),
                      Expanded(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: FilledButton(
                                  onPressed: isValid.value ? () {
                                    BlocProvider.of<StudentBloc>(context).add(
                                        StudentEvent.addStudent(
                                            AddStudentEntity(
                                                username: username.value,
                                                password: password.value,
                                                name: name.value,
                                                email: email.value
                                            )
                                        )
                                    );
                                  } : null,
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                            (Set<MaterialState> states) {
                                          if (states.contains(
                                              MaterialState.disabled)) {
                                            return const Color(0xFFD0D5DD);
                                          }
                                          return const Color(0xFF00B533);
                                        }),
                                    shape: MaterialStateProperty.resolveWith<
                                        OutlinedBorder>(
                                            (Set<MaterialState> states) {
                                          return RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8)
                                          );
                                        }),
                                    textStyle: MaterialStateProperty.resolveWith<
                                        TextStyle>(
                                            (Set<MaterialState> states) {
                                          return const TextStyle(
                                              fontSize: 16,
                                              color: Colors.white
                                          );
                                        }),
                                  ),
                                  child: const Text("Submit")
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
