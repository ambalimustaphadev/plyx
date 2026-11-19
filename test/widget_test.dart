import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plyx/main.dart';
import 'package:plyx/presentation/screens/sliderScreens/slideScreenOne.dart';
import 'package:plyx/presentation/screens/splashScreen/splashScreen.dart';

void main() {
  // Load the real app font so text is measured as on device, not with the
  // wide placeholder test font.
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    final mulish = FontLoader('Mulish')
      ..addFont(rootBundle.load('assets/fonts/Mulish-VariableFont_wght.ttf'));
    await mulish.load();
  });

  testWidgets('Splash screen shows and navigates to the first slide',
      (WidgetTester tester) async {
    // Use a phone-sized surface (iPhone 16 Pro Max, 440x956 logical).
    tester.view.physicalSize = const Size(1320, 2868);
    tester.view.devicePixelRatio = 3.0;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(const MyApp());

    expect(find.byType(SplashScreen), findsOneWidget);
    expect(find.text('Plyx'), findsOneWidget);

    // Splash waits 5 seconds before pushing '/slideScreenOne'.
    await tester.pump(const Duration(seconds: 5));
    await tester.pump(const Duration(seconds: 1));

    expect(find.byType(SlideScreenOne), findsOneWidget);
  });
}
