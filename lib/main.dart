import 'package:flutter/material.dart';
import 'package:habit_tracker_provider/Habit%20Tracker/screen/habit_list.dart';
import 'package:habit_tracker_provider/Habit%20Tracker/screen/provider/habit_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HabitProvider(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  HabitListScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
