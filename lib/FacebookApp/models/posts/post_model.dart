
class PostModel {
  PostModel({
    required this.postProfileImage,
    this.postImage = '',
    required this.postName,
    required this.postTime,
    this.isText = false,
    this.textPost = '',
  });

  final String postProfileImage;
  final String postName;
  final String postTime;
  final String postImage;
  final bool isText;
  final String textPost;
}
