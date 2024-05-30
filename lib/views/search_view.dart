import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/widgets/custom_app_bar.dart';
import 'package:weather_app/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static String id = 'SearchView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      appBar: CustomAppBar(
          title: 'Search a City'),
      body:  SearchViewBody(),
    );
  }
}
