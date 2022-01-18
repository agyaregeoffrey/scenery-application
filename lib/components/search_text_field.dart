import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scenery_application/utils/constants.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    required TextEditingController searchController,
    required this.backgroundColor,
    required this.hint,
  })  : _searchController = searchController,
        super(key: key);

  final TextEditingController _searchController;
  final Color backgroundColor;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
        child: TextFormField(
          controller: _searchController,
          validator: (value) {
            if (value!.isEmpty) {}
          },
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
            ),
          ),
          cursorColor: cursorColor,
        ),
      ),
    );
  }
}
