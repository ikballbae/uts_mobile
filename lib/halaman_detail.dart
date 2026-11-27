import 'package:flutter/material.dart';

class HalamanDetail extends StatelessWidget {
  const HalamanDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text('JUDUL BUKU: ${data['judul']}'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                data['gambar'] ?? '',
                width: 120,
                height: 170,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 120,
                    height: 170,
                    color: Colors.grey[300],
                    child:
                        const Icon(Icons.book, size: 48, color: Colors.black54),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'PENGARANG: ${data['pengarang']}',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 12),
            Text(
              'PENERBIT: ${data['penerbit']} | ISBN: ${data['isbn']}',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 16),
            Text(
              data['deskripsi'] ?? '',
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 14,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
