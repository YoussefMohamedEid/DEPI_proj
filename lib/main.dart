import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hedaia/views/layouts/layout%20cubit/layout_cubit_cubit.dart';
import 'package:hedaia/views/layouts/layout_view.dart';
import 'package:hedaia/views/registeration/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.light),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LayoutCubit(),
          ),
        ],
        child: LoginView(),
      ),
    );
  }
}
