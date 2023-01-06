import 'package:flutter/material.dart';
import '../services/categories_service.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: CategoryService().getCategories(),
        initialData: null,
        builder: (c, s) {
          if (s.hasData) {
            return DefaultTabController(
              length: s.data!.data!.length,
              child: SafeArea(
                child: Column(
                  children: [
                    TabBar(
                      isScrollable: true,
                      tabs: List.generate(
                        s.data!.data!.length,
                        (index) => Text(
                          s.data!.data![index].catName.toString(),
                          style: TextStyle(color: Colors.blue),
                          selectionColor: Colors.blue,
                        ),
                      ),
                    ),
                    TabBarView(
                      controller: s.data!.data!.length,
                      children: List.generate(
                        s.data!.data!.length,
                        (index) => Center(
                          child: Image.network(
                            s.data!.data![index].catImg.toString(),
                            color: Colors.grey,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
