enum AppString {
  name("ALS"),
  title("Lorem Ipsum is not simply random text"),
  userName("David Morel"),
  friends("Friends"),
  following("Following"),
  userTitle(
      "Keep smiling, bacause life is a beautiful thing and there's so much to smile about.");

  final String _value;
  const AppString(this._value);
  String get() => _value;
}
