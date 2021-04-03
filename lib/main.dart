import 'package:counter_with_bloc/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_page.dart';



void main(){
  runApp(MyApp());
}




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter With BloC',
      home: BlocProvider<CounterCubit>(
        create: (BuildContext context)=>CounterCubit(),
        child: CounterPage(),
      ),
    );
  }
}
