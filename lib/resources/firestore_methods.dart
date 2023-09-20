import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:insta/model/post.dart';
import 'package:insta/resources/storage_methods.dart';
import 'package:uuid/uuid.dart';

class FirestoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String postId = const Uuid().v1();

  Future<String> uploadPost(String description,
      Uint8List file,
      String uid,
      String username,
      String profImage,) async {
    String res = 'Some error occured';
    try {
      String photoUrl = await StorageMethods().uploadImageToStorage(
          'posts', file, true);
      Post post = Post(description: description,
          uid: uid,
          username: username,
          postId: postId,
          datePublished: DateTime.now(),
          postUrl: photoUrl,
          profImage: profImage,
          likes: [],);

      _firestore.collection('posts').doc(postId).set(post.toJson());
      res = 'Success';
    }
    catch
    (e){
        res = e.toString();
    }
    return res;
}}