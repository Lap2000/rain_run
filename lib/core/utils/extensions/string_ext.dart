extension StringNullExt on String? {
  bool get isNull => this == null;
  bool get isNullOrEmpty => isNull || this == '';

  String get orError => isNull ? 'Error' : this!;

  String get orEmpty => isNull ? '' : this!;
}
