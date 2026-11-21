import 'package:flutter/material.dart';

import '../widgets/book_card.dart';

class CatalogGrid extends StatelessWidget {
  const CatalogGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catalogue PDF',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.65,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return BookCard(
              title: 'Livre PDF ${index + 1}',
              author: 'Auteur ${index + 1}',
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
