import 'package:flutter/material.dart';

import 'components/body.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3.0,
        title: Text('Share Post'),
        leading: IconButton(
          icon: Icon(Icons.cancel_rounded),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [TextButton(onPressed: null, child: Text('Post'))],
      ),
      body: PostBody(),
    );
  }
}
