import 'package:flutter/foundation.dart';
import '../models/media.dart';

/// Provider pour gérer l'état de l'application G-Store
/// Gère les favoris et le panier
class StoreProvider extends ChangeNotifier {
  // Liste des IDs des médias favoris
  final Set<int> _favoriteIds = {};

  // Liste des IDs des médias dans le panier avec leurs quantités
  final Map<int, int> _cartItems = {};

  // Getters
  Set<int> get favoriteIds => _favoriteIds;
  Map<int, int> get cartItems => _cartItems;

  /// Vérifie si un média est dans les favoris
  bool isFavorite(int mediaId) {
    return _favoriteIds.contains(mediaId);
  }

  /// Ajoute ou retire un média des favoris
  void toggleFavorite(int mediaId) {
    if (_favoriteIds.contains(mediaId)) {
      _favoriteIds.remove(mediaId);
    } else {
      _favoriteIds.add(mediaId);
    }
    notifyListeners();
  }

  /// Retourne la liste des médias favoris
  List<Media> getFavoriteMedias() {
    return staticMediaList
        .where((media) => _favoriteIds.contains(media.id))
        .toList();
  }

  /// Vérifie si un média est dans le panier
  bool isInCart(int mediaId) {
    return _cartItems.containsKey(mediaId);
  }

  /// Ajoute un média au panier
  void addToCart(int mediaId) {
    if (_cartItems.containsKey(mediaId)) {
      _cartItems[mediaId] = _cartItems[mediaId]! + 1;
    } else {
      _cartItems[mediaId] = 1;
    }
    notifyListeners();
  }

  /// Retire un média du panier
  void removeFromCart(int mediaId) {
    _cartItems.remove(mediaId);
    notifyListeners();
  }

  /// Diminue la quantité d'un média dans le panier
  void decreaseQuantity(int mediaId) {
    if (_cartItems.containsKey(mediaId)) {
      if (_cartItems[mediaId]! > 1) {
        _cartItems[mediaId] = _cartItems[mediaId]! - 1;
      } else {
        _cartItems.remove(mediaId);
      }
      notifyListeners();
    }
  }

  /// Retourne la liste des médias dans le panier
  List<Media> getCartMedias() {
    return staticMediaList
        .where((media) => _cartItems.containsKey(media.id))
        .toList();
  }

  /// Retourne la quantité d'un média dans le panier
  int getQuantity(int mediaId) {
    return _cartItems[mediaId] ?? 0;
  }

  /// Calcule le total du panier
  double getCartTotal() {
    double total = 0;
    for (var entry in _cartItems.entries) {
      final media = staticMediaList.firstWhere((m) => m.id == entry.key);
      total += media.price * entry.value;
    }
    return total;
  }

  /// Nombre d'articles dans le panier
  int get cartItemCount {
    int count = 0;
    for (var quantity in _cartItems.values) {
      count += quantity;
    }
    return count;
  }

  /// Nombre de favoris
  int get favoritesCount => _favoriteIds.length;

  /// Vide le panier (après paiement)
  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
