import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:student_crud_app/features/students/domain/entities/student_list_entity.dart';
import 'package:student_crud_app/features/students/presentation/bloc/student_bloc.dart';
import 'package:student_crud_app/features/students/presentation/ui/screens/student_list_screen.dart';

import '../../../../../di/injection_container.dart';

class StudentDetailScreen extends HookWidget {
  const StudentDetailScreen({super.key, required this.student});

  final StudentListEntity student;

  @override
  Widget build(BuildContext context) {
    final switchValue = useState(false);

    useEffect(() {
      switchValue.value = student.IsActive;
    }, []);

    return WillPopScope(
        onWillPop: () async {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const StudentListScreen()),
          );
          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Student Details"),
            centerTitle: true,
            backgroundColor: const Color(0xFF00B533),
            titleTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20
            ),
            leading: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const StudentListScreen()),
                  );
                },
                icon: const Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                )
            ),
          ),
          body: BlocProvider(
              create: (context) => sl<StudentBloc>(),
              child: BlocListener<StudentBloc, StudentState>(
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
                    updateSuccess: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Student active status successfully updated')
                          )
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Name",
                                      style: TextStyle(
                                          fontSize: 17
                                      ),
                                    ),
                                    Text(
                                      student.Name!,
                                      style: const TextStyle(
                                          fontSize: 17
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            const Divider(
                              height: 1,
                              thickness: 0.5,
                              color: Colors.grey,
                            ),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Username",
                                      style: TextStyle(
                                          fontSize: 17
                                      ),
                                    ),
                                    Text(
                                      student.Username!,
                                      style: const TextStyle(
                                          fontSize: 17
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            const Divider(
                              height: 1,
                              thickness: 0.5,
                              color: Colors.grey,
                            ),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Email",
                                      style: TextStyle(
                                          fontSize: 17
                                      ),
                                    ),
                                    Text(
                                      student.Email!,
                                      style: const TextStyle(
                                          fontSize: 17
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            const Divider(
                              height: 1,
                              thickness: 0.5,
                              color: Colors.grey,
                            ),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Created Date",
                                      style: TextStyle(
                                          fontSize: 17
                                      ),
                                    ),
                                    Text(
                                      student.CreatedDate == null ?
                                      "NA" :
                                      DateFormat("MMM dd, yyyy").format(
                                          student.CreatedDate!),
                                      style: const TextStyle(
                                          fontSize: 17
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            const Divider(
                              height: 1,
                              thickness: 0.5,
                              color: Colors.grey,
                            ),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "IsActive",
                                      style: TextStyle(
                                          fontSize: 17
                                      ),
                                    ),
                                    Switch(
                                        value: switchValue.value,
                                        onChanged: (value) {
                                          switchValue.value = value;
                                          BlocProvider.of<StudentBloc>(context).add(
                                              StudentEvent.updateStudent(student.Id, switchValue.value));
                                        }
                                    )
                                  ],
                                )
                            ),
                          ],
                        ),
                      );
                    }
                ),
              )
          ),
        )
    );
  }
}
