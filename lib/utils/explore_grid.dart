import 'package:flutter/material.dart';
import 'package:uts_ui_search_page_ig/models/explore_images.dart';

class ExploreGrid extends StatelessWidget {
  const ExploreGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: exploreImages.length,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(exploreImages[index]),
                fit: BoxFit.fill, // agar gambar memenuhi seluruh container
              ),
            ),
          ),
        );
      }
    );
  }
}