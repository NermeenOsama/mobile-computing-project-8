import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/HomePage.dart';
import 'bloc/MyBlocObserver.dart';
import 'bloc/cubit.dart';
import 'bloc/state.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(AirPressureApp());
}

class AirPressureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => BarometerCubit(),
        child: BlocConsumer<BarometerCubit, BarometerStates>(
        listener: (context, state) {

        },
    builder: (context, state) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
    },
        ),
    );
  }
}
