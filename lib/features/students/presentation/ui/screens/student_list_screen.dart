import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_crud_app/features/students/presentation/bloc/student_bloc.dart';
import 'package:student_crud_app/features/students/presentation/ui/screens/add_student_screen.dart';
import 'package:student_crud_app/features/students/presentation/ui/screens/student_detail_screen.dart';
import 'package:student_crud_app/features/students/presentation/ui/widgets/student_widget.dart';

import '../../../../../di/injection_container.dart';

class StudentListScreen extends StatelessWidget {
  const StudentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StudentBloc>(
      create: (_) => sl()..add(const StudentEvent.getStudents()),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Student List"),
          centerTitle: true,
          backgroundColor: const Color(0xFF00B533),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddStudentScreen()),
            );
          },
          backgroundColor: const Color(0xFF00B533),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: BlocBuilder<StudentBloc, StudentState> (
          buildWhen: (_, state) => state.maybeWhen(
            loading: () => true,
            success: (_) => true,
            error: (_) => true,
            orElse: () => false,
          ),
          builder: (_, state) {
            return state.maybeWhen(
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                success: (students) {
                  return ListView.builder(
                      itemCount: students.where((e) => e.IsActive).length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StudentDetailScreen(student: students[index]),
                              ),
                            );
                          },
                          child: StudentWidget(
                              username: students[index].Username!,
                              name: students[index].Name!
                          ),
                        );
                      }
                  );
                },
                error: (error) {
                  return Center(
                    child: Text("${error.message}"),
                  );
                },
                orElse: () {
                  return const SizedBox.shrink();
                }
            );
          },
        ),
      ),
    );
  }
}
