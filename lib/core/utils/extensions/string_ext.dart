extension StringNullExt on String? {
  bool get isNull => this == null;
  bool get isNullOrEmpty => isNull || this == '';

  String get orError => isNull ? 'Error' : this!;

  String get orEmpty => isNull ? '' : this!;

  String? get capitalizeFirstLetter {
    if (isNullOrEmpty) {
      return this;
    }

    return this![0].toUpperCase() + this!.substring(1);
  }
}
