import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String title; // l3onwan dyal lktab fix
  final String author; // smiya dyal lmo2lif fix
  final VoidCallback onTap; //katn9lk fach twta

  const BookCard({
    super.key,
    required this.title, //darori y7t 3onwan
    required this.author, // darori y7t smiya dyal lmo2lif
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF171F33),
      shape: RoundedRectangleBorder(
        // l7doud dyal lcard
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 3 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF222A3D),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.menu_book_rounded,
                      size: 48,
                      color: Color(0xFF506CEC),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ), // 2. عنوان الكتاب (بخط Literata ولون #E3E1ED)
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontFamily: 'Literata',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFE3E1ED),
                ),
              ),
              const SizedBox(height: 4),

              // 3. اسم الكاتب (بخط Plus Jakarta Sans ولون #C5C5D6)
              Text(
                author,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFC5C5D6),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
