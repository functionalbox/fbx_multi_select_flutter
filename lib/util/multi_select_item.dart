/// A model class used to represent a selectable item.
// @ -2,7 +2,10 @@
class MultiSelectItem<T> {
  final T value;
  final String label;
  final String? subTitle;
  final String? imgUrl;
  bool selected = false;

  MultiSelectItem(
      {required this.value, required this.label, this.subTitle, this.imgUrl});
}
