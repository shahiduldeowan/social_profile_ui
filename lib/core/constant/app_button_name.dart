enum AppButtonName {
  addFriend("Add Friend"),
  editProfile("Edit Profile");

  final String _value;
  const AppButtonName(this._value);
  String get() => _value;
}
