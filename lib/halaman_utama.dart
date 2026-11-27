import 'package:flutter/material.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'WISATA PEKALONGAN',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              _itemWisata(
                context: context,
                nama: 'Pantai Pasir Kencana',
                gambar: 'assets/images/pantai_pasir_kencana.jpg',
                rute: '/pantai_pasir_kencana',
              ),
              const SizedBox(height: 16),
              _itemWisata(
                context: context,
                nama: 'Pantai Slamaran',
                gambar: 'assets/images/pantai_slamaran.jpg',
                rute: '/pantai_slamaran',
              ),
              const SizedBox(height: 16),
              _itemWisata(
                context: context,
                nama: 'Museum Batik',
                gambar: 'assets/images/museum_batik.jpg',
                rute: '/museum_batik',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemWisata({
    required BuildContext context,
    required String nama,
    required String gambar,
    required String rute,
  }) {
    return Row(
      children: [
        Image.asset(
          gambar,
          width: 160,
          height: 100,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              width: 160,
              height: 100,
              color: Colors.grey[300],
              child: const Icon(Icons.image, size: 40, color: Colors.black54),
            );
          },
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nama,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, rute);
                },
                child: const Text('Tentang'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
