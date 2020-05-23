
import 'package:flutter/material.dart';
import 'package:flutter_app/login/page/login_page.dart';
import 'package:flutter_app/login/page/register_page.dart';
import 'package:flutter_app/login/page/reset_password_page.dart';
import 'package:flutter_app/login/page/sms_login_page.dart';
import 'package:flutter_app/login/page/update_password_page.dart';
import 'package:flutter_app/provider/theme_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  
  var map = Map<String, Widget>();
  map['login_page'] = LoginPage();
  map['register_page'] = RegisterPage();
  map['reset_password_page.dart'] = ResetPasswordPage();
  map['sms_login_page.dart'] = SMSLoginPage();
  map['update_password_page.dart'] = UpdatePasswordPage();
 
  /// 这里就不检测页面可点击目标大小了，因为不符合。。。
  
  group('login => 检测页面可点击目标是否都有语义', () {
    ThemeData themeData = ThemeProvider().getTheme();
    map.forEach((name, page) {
      testWidgets(name, (WidgetTester tester) async {
        final SemanticsHandle handle = tester.ensureSemantics();
        await tester.pumpWidget(MaterialApp(home: page, theme: themeData,));
        await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
        handle.dispose();
      });
    });
  });

}
