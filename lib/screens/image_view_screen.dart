import 'package:flutter/material.dart';

class ImageViewScreen extends StatelessWidget {
  const ImageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .5,
            width: MediaQuery.of(context).size.height * .5,

            //child: Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fskylum.com%2Fhow-to%2Fhow-to-make-picture-bigger&psig=AOvVaw0B0m0i5ukWPBaElN5glgnW&ust=1763958002628000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMDe2uK1h5EDFQAAAAAdAAAAABAJ' ),
          ),
        ),
      ),
    );
  }
}
