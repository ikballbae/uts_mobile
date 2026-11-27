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
                'BUKU PSIKOLOGIS',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              _itemBuku(
                context: context,
                judul: 'Pengukuran Psikologis',
                subjudul: 'Augustinus Supratiknya, 2020',
                gambar: 'assets/images/pengukuran_psikologis.jpg',
                pengarang: 'Augustinus Supratiknya',
                penerbit: 'Sanata Dharma University Press',
                isbn: '9786029187755',
                deskripsi:
                    'Pengukuran psikologis atau psikometri merupakan salah satu bidang kajian dalam Psikologi yang bisa disebut sarat silang pendapat. Sebagai subdisiplin yang mendasarkan diri pada asumsi-asumsi positivistik-esensialistik-realistik, dia cenderung -dimusuhi- bahkan oleh saudara-saudaranya sendiri di lingkungan Psikologi yang memilih mengikuti asumsi-asumsi konstruktivistik-hermeneutik-interpretatif, dan dianggap ketinggalan zaman. Dalam layanan intervensi psikologis di lingkungan klinis, berkat peran utamanya mensuplai data untuk keperluan diagnosis dia dituduh merendahkan martabat psikolog dengan menempatkannya inferior dibandingkan profesional lain, psikiater misalnya, serta mereduksi sumbangannya sebagai sekadar tukang tes',
              ),
              const SizedBox(height: 20),
              _itemBuku(
                context: context,
                judul: 'Spiritualitas dan Kesejahteraan',
                subjudul: 'Marissa Chitra Sulastra, 2022',
                gambar: 'assets/images/spiritualitas_dan_kesejahteraan.jpg',
                pengarang: 'Marissa Chitra Sulastra',
                penerbit: 'Deepublish',
                isbn: '9786230245121',
                deskripsi:
                    'Buku ini membahas hubungan antara dimensi spiritualitas manusia dan kesejahteraan psikologis dalam kehidupan sehari-hari. Pembaca diajak memahami bagaimana nilai-nilai spiritual, makna hidup, serta ketenangan batin dapat membantu individu menghadapi tekanan dan meningkatkan kualitas hidup secara menyeluruh.',
              ),
              const SizedBox(height: 20),
              _itemBuku(
                context: context,
                judul: 'Psikologi',
                subjudul: 'Erlangga. 2018',
                gambar: 'assets/images/psikologi.jpg',
                pengarang: 'Carole Wade & Carol Tavris',
                penerbit: 'Erlangga',
                isbn: '9786024347123',
                deskripsi:
                    'Buku pengantar psikologi ini menyajikan konsep-konsep dasar mengenai perilaku manusia, proses kognitif, emosi, motivasi, serta perkembangan kepribadian dengan pendekatan ilmiah dan berpikir kritis.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemBuku({
    required BuildContext context,
    required String judul,
    required String subjudul,
    required String gambar,
    required String pengarang,
    required String penerbit,
    required String isbn,
    required String deskripsi,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                judul,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subjudul,
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/buku_detail',
                    arguments: {
                      'judul': judul,
                      'gambar': gambar,
                      'pengarang': pengarang,
                      'penerbit': penerbit,
                      'isbn': isbn,
                      'deskripsi': deskripsi,
                    },
                  );
                },
                child: const Text('Tentang Buku'),
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        Image.asset(
          gambar,
          width: 100,
          height: 140,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              width: 100,
              height: 140,
              color: Colors.grey[300],
              child: const Icon(Icons.book, size: 40, color: Colors.black54),
            );
          },
        ),
      ],
    );
  }
}
