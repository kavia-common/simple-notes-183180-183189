import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_notes_frontend/main.dart';

void main() {
  testWidgets('Notes list screen renders with empty state', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());

    // Initially shows app bar title "My Notes" and empty state if no notes exist.
    expect(find.text('My Notes'), findsOneWidget);
    // Let any async init settle
    await tester.pumpAndSettle();
    expect(find.text('No notes yet'), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
