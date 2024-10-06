class Project {
  final String name, descriptionKey, image;
  final String? url;
  final bool canBeDownloaded;
  final bool neitherDownloadedNorViewed;

  const Project({
    required this.name,
    required this.descriptionKey,
    required this.image,
    this.url,
    this.canBeDownloaded = false,
    this.neitherDownloadedNorViewed = false,
  });
}
