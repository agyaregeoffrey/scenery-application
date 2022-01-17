import 'package:flutter/material.dart';
import 'package:scenery_application/components/search_text_field.dart';
import 'package:scenery_application/screens/details/detail.dart';
import 'package:scenery_application/site.dart';
import 'package:scenery_application/utils/constants.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SearchTextField(
            searchController: _searchController,
            backgroundColor: lightGrey,
            hint: 'Search',
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: gridPadding),
            child: GridView.builder(
              itemCount: sites.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: gridPadding,
                crossAxisSpacing: gridPadding,
                childAspectRatio: 0.9,
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Detail(
                                  site: sites[index],
                                )));
                  },
                  child: Container(
                    color: lightGrey,
                    width: 20.0,
                    height: 20.0,
                    child: Hero(
                      tag: sites[index].id,
                      child: Image.asset(
                        sites[index].image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
