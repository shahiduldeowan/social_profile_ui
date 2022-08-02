enum ProfileTabLabel {
  photo("Photos"),
  videos("Videos"),
  stories("Stories");

  final String _value;
  const ProfileTabLabel(this._value);
  String get() => _value;
}
