import 'package:farghaly/weather/cubit/cubit.dart';
import 'package:farghaly/weather/dio/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/home_page.dart';

void main() {

   WidgetsFlutterBinding.ensureInitialized();
   DioHelper.init();
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   MultiBlocProvider(
      providers: [
         BlocProvider(
           create: (context)=>AppCubit2(),
         ),

      ],
      child: const MaterialApp(
        home: HomePage(),

    debugShowCheckedModeBanner: false

      ),
      
    );
  }
}
