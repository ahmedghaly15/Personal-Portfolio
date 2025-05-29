import '../utils/app_assets.dart';

class AssetHelper {
  AssetHelper._();

  static String getProjectImg(String projectTitle) {
    final normalizedTitle = _normalize(projectTitle);
    return _projectImages.firstWhere((asset) {
      final assetName = _normalize(asset.split('/').last.split('_').first);
      return normalizedTitle.contains(assetName);
    }, orElse: () => Assets.imagesJobIcon);
  }

  static String _normalize(String input) {
    /// Remove all spaces, underscores, and dashes
    return input.toLowerCase().replaceAll(RegExp(r'[_\- ]'), '');
  }

  static const List<String> _projectImages = [
    Assets.imagesIcareIcon,
    Assets.imagesRoomeIcon,
    Assets.imagesStoreifyIcon,
    Assets.imagesLinkupIcon,
  ];
}
