import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:student_crud_app/core/hive/model/access_token.dart';
import 'package:student_crud_app/features/login/presentation/ui/screen/login_screen.dart';

import 'di/injection_container.dart';
import 'features/login/presentation/bloc/login_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  Hive.initFlutter((await getApplicationDocumentsDirectory()).path);
  Hive.registerAdapter(AccessTokenAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => sl<LoginBloc>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Student Crud App',
        theme: ThemeData(
            useMaterial3: true,
            splashFactory: NoSplash.splashFactory
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
