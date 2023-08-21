import 'package:flutter/material.dart';

// void main() {
//   runApp();
// }

class LoadingBuilderExampleApp extends StatelessWidget {
  final String imageUrl;

  const LoadingBuilderExampleApp({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoadingBuilderExample(imageUrl: imageUrl),
    );
  }
}

class LoadingBuilderExample extends StatelessWidget {
  final String imageUrl;

  const LoadingBuilderExample({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.network(
        imageUrl,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
      ),
    );
  }
}
