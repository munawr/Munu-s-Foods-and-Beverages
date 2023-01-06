import 'package:flutter/material.dart';
import 'package:shopping_application/services/home_service.dart';

class HomeList extends StatefulWidget {
  const HomeList({super.key});

  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: HomeService().getHome(),
            initialData: null,
            builder: (context, result) {
              if (result.hasData) {
                return ListView.builder(
                  itemCount: result.data?.data?.bestsellerProducts?.length ?? 0,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Colors.blueGrey, width: 6),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(result.data?.data
                                              ?.bestsellerProducts?[index].image
                                              .toString() ??
                                          ''),
                                      fit: BoxFit.cover)),
                              height: 200,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    result.data?.data
                                            ?.bestsellerProducts?[index].name
                                            .toString() ??
                                        '',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(20),
                              width: double.infinity,
                              color: Colors.blueGrey,
                              child: Text(
                                result.data?.data?.bestsellerProducts?[index]
                                        .description
                                        .toString() ??
                                    '',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
