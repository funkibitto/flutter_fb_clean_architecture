class UserEntity {
  final String email;
  final String uid;
  final String? photoUrl;
  final String username;
  final String bio;
  final List followers;
  final List following;

  const UserEntity({
    required this.username,
    required this.uid,
    this.photoUrl,
    required this.email,
    required this.bio,
    required this.followers,
    required this.following,
  });
}
