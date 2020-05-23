
import 'package:flutter_app/mvp/mvps.dart';
import 'package:flutter_app/shop/models/user_entity.dart';

abstract class ShopIMvpView implements IMvpView {

  void setUser(UserEntity user);
  
  bool get isAccessibilityTest;
}
