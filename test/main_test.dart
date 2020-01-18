import 'package:flutter_test/flutter_test.dart';
import 'package:simple_firebase_messanger/main.dart';
import 'package:simple_firebase_messanger/pages/ConversationPageList.dart';

void main() {
  testWidgets('Main UI Test',(tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.byType(ConversationPageList), findsOneWidget);
  } );
}
