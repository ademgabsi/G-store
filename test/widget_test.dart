// Tests unitaires pour G-Store
// Note: Les tests de widgets nécessitent une version compatible de Flutter

import 'package:flutter_test/flutter_test.dart';
import 'package:store/providers/store_provider.dart';

void main() {
  test('StoreProvider favorites functionality', () {
    final provider = StoreProvider();
    
    // Initially no favorites
    expect(provider.favoritesCount, 0);
    expect(provider.isFavorite(1), false);
    
    // Add to favorites
    provider.toggleFavorite(1);
    expect(provider.favoritesCount, 1);
    expect(provider.isFavorite(1), true);
    
    // Remove from favorites
    provider.toggleFavorite(1);
    expect(provider.favoritesCount, 0);
    expect(provider.isFavorite(1), false);
  });

  test('StoreProvider cart functionality', () {
    final provider = StoreProvider();
    
    // Initially empty cart
    expect(provider.cartItemCount, 0);
    expect(provider.isInCart(1), false);
    
    // Add to cart
    provider.addToCart(1);
    expect(provider.cartItemCount, 1);
    expect(provider.isInCart(1), true);
    expect(provider.getQuantity(1), 1);
    
    // Add same item again
    provider.addToCart(1);
    expect(provider.cartItemCount, 2);
    expect(provider.getQuantity(1), 2);
    
    // Decrease quantity
    provider.decreaseQuantity(1);
    expect(provider.getQuantity(1), 1);
    
    // Remove from cart
    provider.removeFromCart(1);
    expect(provider.cartItemCount, 0);
    expect(provider.isInCart(1), false);
  });

  test('StoreProvider clear cart', () {
    final provider = StoreProvider();
    
    provider.addToCart(1);
    provider.addToCart(2);
    provider.addToCart(3);
    
    expect(provider.cartItemCount, 3);
    
    provider.clearCart();
    expect(provider.cartItemCount, 0);
  });
}

