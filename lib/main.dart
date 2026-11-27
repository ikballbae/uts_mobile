import 'package:flutter/material.dart';
import 'halaman_utama.dart';
import 'halaman_detail.dart';

void main() {
  runApp(const AplikasiWisata());
}

class AplikasiWisata extends StatelessWidget {
  const AplikasiWisata({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Navigasi',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HalamanUtama(),
        '/pantai_pasir_kencana': (context) => const HalamanDetail(
              judul: 'Pantai Pasir Kencana',
              gambar: 'assets/images/pantai_pasir_kencana.jpg',
              deskripsi:
                  'Pantai Pasir Kencana, wisata populer lainnya di Kota Pekalongan. Kamu bisa menikmati matahari tenggelam atau pemandangan Laut Jawa di ketinggian melalui skywalk. Tak perlu khawatir bosan, karena tersedia wahana bermain sepeda air untuk berkeliling sekitar pantai atau kolam renang, serta ada pula area bermain khusus anak. Pantai ini biasanya dijadikan sebagai tempat pergelaran pertunjukan seni. Kamu bisa datang setiap hari mulai pukul 08.00 sampai 21.00 WIB.',
            ),
        '/pantai_slamaran': (context) => const HalamanDetail(
              judul: 'Pantai Slamaran',
              gambar: 'assets/images/pantai_slamaran.jpg',
              deskripsi:
                  'Pantai Slamaran merupakan salah satu wisata bahari yang terkenal di Kota Pekalongan. Pantai ini menawarkan pemandangan laut yang tenang dengan deretan pohon cemara di tepi pantai. Pengunjung dapat bersantai menikmati angin laut serta menyaksikan keindahan matahari terbit maupun matahari terbenam.',
            ),
        '/museum_batik': (context) => const HalamanDetail(
              judul: 'Museum Batik',
              gambar: 'assets/images/museum_batik.jpg',
              deskripsi:
                  'Museum Batik Pekalongan menyimpan berbagai koleksi batik khas Pekalongan dan daerah lain di Indonesia. Di tempat ini pengunjung dapat melihat sejarah perkembangan batik, koleksi kain batik kuno, serta mencoba langsung proses membatik tradisional di area workshop.',
            ),
      },
    );
  }
}
