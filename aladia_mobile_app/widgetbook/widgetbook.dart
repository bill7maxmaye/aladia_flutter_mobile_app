import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'addons/addons.dart';
import 'usecases/appLogo_usecase.dart';
import 'usecases/primaryButton_usecase.dart';
import 'usecases/socialLoginButton_usecase.dart';
import 'usecases/termsAndConditionText_usecase.dart';

void main() {
  runApp(const WidgetBook());
}

class WidgetBook extends StatelessWidget {
  const WidgetBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        themeAddon,
      ], // Add any Widgetbook addons if needed
      directories: [
        WidgetbookCategory(
          name: 'UI Components',
          children: [
            WidgetbookComponent(
              name: 'Logo Components',
              useCases: [
                WidgetbookUseCase(
                  name: 'App Logo Default',
                  builder: (context) => Center(
                    child: appLogoUseCase(context), // AppLogo use case
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Buttons',
              useCases: [
                WidgetbookUseCase(
                  name: 'Primary Button',
                  builder: (context) => Center(
                    child: primaryButtonUseCase(
                        context), // Primary Button use case
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Social Login Button',
                  builder: (context) => Center(
                    child: socialLoginButtonUseCase(
                        context), // Social Login Button use case
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Text Button (Terms & Conditions)',
                  builder: (context) => Center(
                    child: textButtonUseCase(context), // Text Button use case
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
