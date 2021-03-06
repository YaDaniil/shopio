import 'package:shop/models/app_state.dart';
import 'package:shop/reducers/popular_products_reducer.dart';
import 'categories_reducer.dart';
import 'initial_loading_reducer.dart';
import 'tabs_reducer.dart';
import 'favourite_products_reducer.dart';
import 'favourites_loading_reducer.dart';
import 'favourites_ids_reducer.dart';
import 'cart_reducer.dart';
import 'areas_reducer.dart';
import 'products_loading_reducer.dart';
import 'products_reducer.dart';
import 'product_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    isInitialLoading: initialLoadingReducer(state.isInitialLoading, action),
    popularProducts: popularProductsReducer(state.popularProducts, action),
    isProductsLoading: productsLoadingReducer(state.isProductsLoading, action),
    products: productsReducer(state.products, action),
    categories: categoriesReducer(state.categories, action),
    areas: areasReducer(state.areas, action),
    isFavouritesLoading:
        favouritesLoadingReducer(state.isFavouritesLoading, action),
    favouriteProducts:
        favouriteProductsReducer(state.favouriteProducts, action),
    favouriteProductsIds:
        favouriteIdsReducer(state.favouriteProductsIds, action),
    cartItems: cartReducer(state.cartItems, action),
    activeTab: tabsReducer(state.activeTab, action),
    product: productReducer(state.product, action)
  );
}
