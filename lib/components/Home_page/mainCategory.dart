import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class MainCategory extends StatelessWidget {
  const MainCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCategoryRow(),
        SizedBox(height: xsamll),
        _buildPlacesRow('cat 1'),
        SizedBox(height: xsamll),
        _buildPlacesRow('cat 2'),
      ],
    );
  }

  Widget _buildCategoryRow() {
    return Row(
      children: [
        Text('Category', style: heading1),
      ],
    );
  }

  Widget _buildPlacesRow(String placeName) {
    return Row(
      children: [
        _buildPlaceContainer(placeName),
        SizedBox(width: xsamll),
        _buildPlaceContainer(placeName),
      ],
    );
  }

  Widget _buildPlaceContainer(String placeName) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 30,
      width: 100,
      child: Center(
        child: Text(
          placeName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
