import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // لون الخلفية الداكن للمشروع
      backgroundColor: const Color(0xFF0B1326),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- بداية قسم العنوان (Matières & Séminaires) ---
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // الأيقونة والنص بجانب بعضهما
                    Row(
                      children: const [
                        Icon(
                          Icons.folder_copy_outlined,
                          color: Color(0xFF6F88FF),
                          size: 22,
                        ),
                        SizedBox(width: 8), // مسافة فاصلة 8 بكسل
                        Text(
                          'Matières & Séminaires',
                          style: TextStyle(
                            color: Color(0xFFE3E1ED),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    // زر إضافة مجلد على اليمين
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Créer dossier +',
                        style: TextStyle(
                          color: Color(0xFF6F88FF),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // --- نهاية قسم العنوان ---
            ],
          ),
        ),
      ),
    );
  }
}
