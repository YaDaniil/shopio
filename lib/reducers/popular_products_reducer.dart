import 'package:redux/redux.dart';

import 'package:shop/actions/actions.dart';
import 'package:shop/models/product_model.dart';

final popularProductsReducer = combineReducers<List<ProductModel>>([
  TypedReducer<List<ProductModel>, InitialLoadedAction>(
      _setLoadedPopularProducts),
  TypedReducer<List<ProductModel>, InitialNotLoadedAction>(
      _setNoPopularProducts),
  TypedReducer<List<ProductModel>, PopularProductsRefreshedAction>(
      _setRefreshedPopularProducts),
  TypedReducer<List<ProductModel>, PopularProductsNotRefreshedAction>(
      _setNoRefreshedPopularProducts),
]);

List<ProductModel> _setLoadedPopularProducts(
    List<ProductModel> popularProducts, InitialLoadedAction action) {
  return action.popularProducts;
}

List<ProductModel> _setNoPopularProducts(
    List<ProductModel> popularProducts, InitialNotLoadedAction action) {
  return [];
}

List<ProductModel> _setRefreshedPopularProducts(
    List<ProductModel> popularProducts, PopularProductsRefreshedAction action) {
  return action.popularProducts;
}

List<ProductModel> _setNoRefreshedPopularProducts(
    List<ProductModel> popularProducts,
    PopularProductsNotRefreshedAction action) {
  return [];
}
