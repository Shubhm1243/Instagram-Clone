import 'package:flutter/material.dart';
import 'package:insta/screens/feed_screen.dart';
import 'package:insta/screens/search_screen.dart';

import '../screens/add_post.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  SearchScreen(),
  AddPost(),
  Text('Notification'),
  Text('Profile'),
];