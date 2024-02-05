import 'package:flutter/material.dart';
import 'package:todom/widgets/appbar.dart';
import 'package:todom/widgets/todocard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Scaffold(
        appBar: CommonAppBar(),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
             WelcomeUser(),
             SizedBox(height: 10),
             Text(
               'You have got 7 tasks to do',
               style: TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.w500,
                 color: Colors.black54,
               ),
             ),
             SizedBox(height: 32),
            CardTodo()
          ],
        ),
      ),
    );
  }
}

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'Welcome ',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
        children: [
          TextSpan(
            text: 'Username.',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
