import 'package:flutter/material.dart';
import 'package:insta/screens/feed_screen.dart';

import '../screens/add_post.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  Text('Search'),
  AddPost(),
  Text('Notification'),
  Text('Profile'),
];