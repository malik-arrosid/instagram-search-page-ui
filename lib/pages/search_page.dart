import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:uts_ui_search_page_ig/models/search_recommendation.dart';
import 'package:uts_ui_search_page_ig/utils/colors.dart';
import 'package:uts_ui_search_page_ig/utils/explore_grid.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 94,
        title: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      color: mobileSearchColor,
                      child: Row(
                        children: [
                          const Icon(
                            Symbols.search,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 8,),
                          Expanded(
                            child: TextFormField(
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[200],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8,),
                const Icon(
                  Symbols.center_focus_strong,
                  size: 40,
                  color: mobileSearchColor,
                  weight: 300,
                ),
              ],
            ),
            const SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: searchRecommendation.map((text) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 6,
                  ),
                  margin: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: mobileSearchColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
      body: const Center(
        child: ExploreGrid(),
      ),
    );
  }
}