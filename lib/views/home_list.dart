import 'package:flutter/material.dart';
import 'package:shopping_application/services/home_service.dart';

import '../models/home_model.dart';

class HomeList extends StatefulWidget {
  const HomeList({super.key});

  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<Home?>(
          future: HomeService().getHome(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.data!.sliderBanners.toString());
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
