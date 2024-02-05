import 'package:flutter/material.dart';
import 'package:todom/constant/colors.dart';
import 'package:todom/service/todo_service.dart';
import 'package:todom/widgets/navigation.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await TodoService.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.pageColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: AppColors.pageColor,
        ),
      ),
      home: Navi(),
      debugShowCheckedModeBanner: false,
    );
  }
}