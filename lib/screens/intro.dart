import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:task/screens/chatapp.dart';
import 'package:task/screens/login.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Send Free Message',
            body:
                'Cras dapibus. Vivamus elemerntum semper nisi Aenean vulputate eleilend tellus. Aenean leo ligula,pottitor eu consequat vitao',
            image: Image.asset('image/preview.png'),
          ),
          PageViewModel(
            title: 'Connect Your Friend',
            body:
                'Cras dapibus. Vivamus elemerntum semper nisi Aenean vulputate eleilend tellus. Aenean leo ligula,pottitor eu consequat vitao',
            image:
                Image.asset('image/undraw_online_world_mc1t-1-1024x782.webp'),
          ),
          PageViewModel(
            title: 'Make Group Chat',
            body:
                'Cras dapibus. Vivamus elemerntum semper nisi Aenean vulputate eleilend tellus. Aenean leo ligula,pottitor eu consequat vitao',
            image: Image.asset('image/تنزيل.jpeg'),
          ),
        ],
        done: FloatingActionButton.small(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => const Login()));
          },
          child: const Icon(Icons.check_rounded),
        ),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(10.0, 20.0),
          activeColor: Theme.of(context).colorScheme.secondary,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
        showBackButton: false,
        animationDuration: 1,
        onDone: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const Login()));
        },
        showNextButton: true,
        next: const FloatingActionButton.small(
          onPressed:null,
          child: Icon(Icons.arrow_right_alt),
        ),
        showSkipButton: true,
        skip: const Text('skip'),
      ),
    );
  }
}
