import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

void main() => runApp(ImagePickerDemo());

class ImagePickerDemo extends StatefulWidget {
  @override
  _ImagePickerDemoState createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  File? _imageFile;

  Future<void> _pickImage() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() {
        _imageFile = File(picked.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Pick and Display Image")),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: _pickImage,
              child: Text("Pick from Gallery"),
            ),
            _imageFile != null
                ? Image.file(_imageFile!)
                : Image.network('https://via.placeholder.com/150'),
          ],
        ),
      ),
    );
  }
}