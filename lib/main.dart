import 'package:flutter/material.dart';
import 'package:flutter_basic_flutter_application/bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter_basic_flutter_application/bloc/home_bloc.dart';
import 'package:flutter_basic_flutter_application/ui/counter_screen.dart';
import 'package:flutter_basic_flutter_application/ui/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: CounterScreen(),
      ),
    );
  }
}
