class RouteData {
  final String name;
  final String path;

  const RouteData({
    required this.name,
    required this.path,
  });

  String get subPath {
    if (!path.startsWith('/')) return path;
    final trimmed = path.substring(1);
    return trimmed.contains('/') ? trimmed.split('/').last : trimmed;
  }
}

abstract class AppRoutInfo {

  static const menu   = RouteData(name: 'menu',   path: '/');
  static const home   = RouteData(name: 'home',   path: '/home');
  static const game   = RouteData(name: 'game',   path: '/game');
  static const level  = RouteData(name: 'level',  path: '/level');
  static const loading= RouteData(name: 'loading',path: '/loading');
  static const shop   = RouteData(name: 'shop',  path: '/shop');

  static const leaderboard  = RouteData(name: 'leaderboard',   path: '/leaderboard');
  static const profile      = RouteData(name: 'profile',       path: '/profile');
  static const settings     = RouteData(name: 'settings',      path: '/settings');
  static const privacyPolicy= RouteData(name: 'privacy_policy',path: '/privacy-policy');
  static const termsOfUse   = RouteData(name: 'terms_of_use',  path: '/terms-of-use');
}
