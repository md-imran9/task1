import 'dart:io'; // Import the 'dart:io' library for using the File class
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _image == null
              ? Text('No image selected.')
              : Image.file(File(_image!.path)), // Use File(_image!.path) directly
          ElevatedButton(
            onPressed: () async {
              final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
              setState(() {
                _image = pickedFile;
              });
            },
            child: Text('Pick Image'),
          ),
        ],
      ),
    );
  }
}
