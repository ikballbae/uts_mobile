import 'package:flutter_test/flutter_test.dart';

import 'package:m242300078_mobile1_a/main.dart';

void main() {
  testWidgets('Menampilkan menu wisata dan navigasi ke detail', (WidgetTester tester) async {
    await tester.pumpWidget(const AplikasiWisata());

    expect(find.text('WISATA PEKALONGAN'), findsOneWidget);
    expect(find.text('Pantai Pasir Kencana'), findsOneWidget);
    expect(find.text('Pantai Slamaran'), findsOneWidget);
    expect(find.text('Museum Batik'), findsOneWidget);
    expect(find.text('Tentang'), findsNWidgets(3));

    await tester.tap(find.text('Tentang').first);
    await tester.pumpAndSettle();

    expect(find.text('Pantai Pasir Kencana'), findsOneWidget);
    expect(find.textContaining('skywalk'), findsOneWidget);
  });
}
