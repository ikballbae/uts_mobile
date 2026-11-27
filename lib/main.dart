import 'package:flutter/material.dart';
import 'halaman_utama.dart';
import 'halaman_detail.dart';

void main() {
  runApp(const AplikasiBuku());
}

class AplikasiBuku extends StatelessWidget {
  const AplikasiBuku({super.key});

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
        '/buku_detail': (context) => const HalamanDetail(),
      },
    );
  }
}
