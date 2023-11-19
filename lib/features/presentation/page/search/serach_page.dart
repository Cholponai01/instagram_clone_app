import 'package:flutter/material.dart';
import 'package:instagram_clone_app/config/app_colors.dart';
import 'package:instagram_clone_app/config/sized_func.dart';
import 'package:instagram_clone_app/features/presentation/page/search/widget/search_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.backGroundColor,
          body: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SearchWidget(controller: _searchController),
                  sizeVer(10),
                  GridView.builder(
                      itemCount: 33,
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 3,
                              mainAxisSpacing: 3),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 100,
                          height: 100,
                          color: AppColors.secondaryColor,
                        );
                      }),
                ],
              ),
            ),
          )),
    );
  }
}
