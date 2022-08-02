enum AppAssets {
  coverPhoto(
      "https://cdn.pixabay.com/photo/2019/05/07/13/57/seedlings-4186033_960_720.jpg"),
  profilePhoto(
      "https://cdn.pixabay.com/photo/2014/10/06/17/30/child-476507_960_720.jpg"),
  friendProfile(
      "https://cdn.pixabay.com/photo/2015/07/09/00/29/woman-837156_960_720.jpg"),
  friendBeachPhoto(
      "https://cdn.pixabay.com/photo/2016/11/08/05/08/adult-1807500_960_720.jpg");

  final String _value;
  const AppAssets(this._value);
  String get() => _value;
}
