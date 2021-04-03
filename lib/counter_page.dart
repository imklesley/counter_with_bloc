import 'package:counter_with_bloc/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Counter With BloC'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, counter) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('O valor atual é:'),
                Text(
                  '${counter}',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          context.read<CounterCubit>().decrement();
                        },
                        child: Icon(Icons.remove),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          context.read<CounterCubit>().increment();
                        },
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
