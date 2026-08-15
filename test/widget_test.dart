import 'package:flutter_test/flutter_test.dart';
import 'package:prana/main.dart';

void main() {
  testWidgets('PranAI app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const PranaApp());
    await tester.pumpAndSettle();

    expect(find.byType(PranaApp), findsOneWidget);
  });
}
