import 'package:flutter_test/flutter_test.dart';
import 'package:smartkasir_app/main.dart';

void main() {
  testWidgets('SmartKasirApp basic smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const SmartKasirApp());
    expect(find.byType(SmartKasirApp), findsOneWidget);
  });
}
