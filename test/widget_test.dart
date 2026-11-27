import 'package:flutter_test/flutter_test.dart';

import 'package:m242300078_mobile1_a/main.dart';

void main() {
  testWidgets('Menampilkan daftar buku dan navigasi ke detail buku', (WidgetTester tester) async {
    await tester.pumpWidget(const AplikasiBuku());

    expect(find.text('BUKU PSIKOLOGIS'), findsOneWidget);
    expect(find.text('Pengukuran Psikologis'), findsOneWidget);
    expect(find.text('Spiritualitas dan Kesejahteraan'), findsOneWidget);
    expect(find.text('Psikologi'), findsOneWidget);
    expect(find.text('Tentang Buku'), findsNWidgets(3));

    await tester.tap(find.text('Tentang Buku').first);
    await tester.pumpAndSettle();

    expect(find.text('JUDUL BUKU: Pengukuran Psikologis'), findsOneWidget);
    expect(find.text('PENGARANG: Augustinus Supratiknya'), findsOneWidget);
    expect(
      find.text('PENERBIT: Sanata Dharma University Press | ISBN: 9786029187755'),
      findsOneWidget,
    );
  });
}
