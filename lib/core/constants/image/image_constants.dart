// ignore_for_file: non_constant_identifier_names

class ImageConstants {
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  ImageConstants._init();

  final ulusalfaktoring_logo = 'ulusal_faktoring'.toPNG;
  final netlixlogo = 'netflixlogo'.toPNG;
  final turkcellLogo = 'turklogo'.toPNG;
  final personLogo = 'person'.toPNG;
}

extension ImageConstantsExtension on String {
  String get toPNG => 'assets/images/$this.png';
}
