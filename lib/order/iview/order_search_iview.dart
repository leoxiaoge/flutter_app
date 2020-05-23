
import 'package:flutter_app/mvp/mvps.dart';
import 'package:flutter_app/order/models/search_entity.dart';
import 'package:flutter_app/provider/base_list_provider.dart';

abstract class OrderSearchIMvpView implements IMvpView {

  BaseListProvider<SearchItem> get provider;
}

