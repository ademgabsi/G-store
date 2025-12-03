import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'providers/store_provider.dart';
import 'screens/splash_screen.dart';
import 'utils/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Configuration de la barre de statut
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  runApp(const GStoreApp());
}

/// Application principale G-Store
/// 
/// Cette application utilise Provider pour la gestion d'état des favoris et du panier.
/// 
/// Structure du projet :
/// - lib/
///   - main.dart                    : Point d'entrée de l'application
///   - models/
///     - media.dart                 : Modèle de données Media et liste statique
///   - providers/
///     - store_provider.dart        : Gestion d'état avec ChangeNotifier
///   - screens/
///     - splash_screen.dart         : Écran de démarrage
///     - login_screen.dart          : Écran de connexion
///     - signup_screen.dart         : Écran d'inscription
///     - reset_password_screen.dart : Écran de réinitialisation mot de passe
///     - main_screen.dart           : Écran principal avec navigation
///     - home_screen.dart           : Liste des films/séries
///     - details_screen.dart        : Détails d'un média
///     - favorites_screen.dart      : Liste des favoris
///     - cart_screen.dart           : Panier d'achat
///     - profile_screen.dart        : Profil utilisateur
///   - widgets/
///     - media_card.dart            : Carte pour afficher un média
///     - cart_item.dart             : Widget élément du panier
///   - utils/
///     - theme.dart                 : Thème de l'application
/// 
/// Gestion d'état :
/// Le StoreProvider utilise ChangeNotifier pour notifier les widgets
/// des changements dans les favoris et le panier. Les widgets utilisent
/// `Consumer<StoreProvider>` pour écouter ces changements et se reconstruire
/// automatiquement.
class GStoreApp extends StatelessWidget {
  const GStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StoreProvider(),
      child: MaterialApp(
        title: 'G-Store',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        home: const SplashScreen(),
      ),
    );
  }
}
