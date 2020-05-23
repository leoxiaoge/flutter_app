
import 'package:flutter/material.dart';
import 'package:flutter_app/mvp/base_page_presenter.dart';
import 'package:flutter_app/net/net.dart';
import 'package:flutter_app/shop/models/user_entity.dart';
import 'package:flutter_app/shop/iview/shop_iview.dart';


class ShopPagePresenter extends BasePagePresenter<ShopIMvpView> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (view.isAccessibilityTest) {
        return;
      }
      
      /// 接口请求例子
      /// get请求参数queryParameters  post请求参数params
      asyncRequestNetwork<UserEntity>(Method.get,
        url: HttpApi.users,
        onSuccess: (data) {
          view.setUser(data);
        },
      );
    });
  }
 
}