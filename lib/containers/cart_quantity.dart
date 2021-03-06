import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shop/models/app_state.dart';

class CartQuantity extends StatelessWidget {
  final Function(BuildContext context, int cartQuantity) builder;

  CartQuantity({Key key, @required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int>(
      distinct: true,
      converter: (store) {
        int totalQuantity = 0;
        store.state.cartItems.forEach((item) => totalQuantity += item.quantity);
        return totalQuantity;
      },
      builder: builder,
    );
  }
}
