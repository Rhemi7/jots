

class ItemModel {

  String name;
  String comment;
  String? note;
  String fitComment;
  String? dayNote;
  bool? hasLike;
  bool? hasNote;
  bool? hasDayNote;
  final void Function()? onTapName;
  final void Function()? onTapNew;
  final void Function()? onTapFlutter;
  final void Function()? onTapNewNote;

  ItemModel({  required this.name,
    required this.comment,
    this.note,
    required this.fitComment,
    this.hasLike = false,
    this.hasNote = false,
    this.onTapName,
    this.onTapNew,
    this.onTapFlutter,
    this.hasDayNote,
    this.dayNote,
    this.onTapNewNote,});
}