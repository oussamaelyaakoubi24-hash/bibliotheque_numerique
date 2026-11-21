import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1326),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: const [
                          Icon(
                            Icons.folder_copy_outlined,
                            color: Color(0xFF6F88FF),
                            size: 22,
                          ),
                          SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              'Matières & Séminaires',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xFFE3E1ED),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            backgroundColor: const Color(0xFF171C2E),
                            title: const Text('Nouveau dossier'),
                            content: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Nom de la matière...',
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Annuler'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Créer'),
                              ),
                            ],
                          ),
                        );
                      },
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
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF171C2E),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          //hada icon dyal neurosicience
                          Icons.psychology,
                          color: Color(0xFF8EA2FF),
                          size: 32,
                        ),
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: Color(0xFFBAC3FD),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12), //masafa bin l3onwan o licon
                    const Text(
                      'Neurosciences',
                      style: TextStyle(
                        color: Color(0xFFE3E1ED),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Cognition & Perception',
                      style: TextStyle(color: Color(0xFFA0A5B9), fontSize: 13),
                    ),
                    const SizedBox(height: 14), //masafa bin ns o takhrikh
                    Row(
                      children: [
                        // lcadre dyal date
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF2B3042),
                            borderRadius: BorderRadius.circular(20),
                          ), //nombre dyal document
                          child: const Text(
                            '18 doc.',
                            style: TextStyle(
                              color: Color(0xFFE3E1ED),
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8), // مسافة أفقية بين الشارتين
                        // lcadre dyal fiches
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF2B3042),
                            borderRadius: BorderRadius.circular(20),
                          ), //fiche
                          child: const Text(
                            '4 fiches',
                            style: TextStyle(
                              color: Color(0xFFBAC3FD),
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
