import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelectImage extends StatefulWidget {
  final void Function(File image) afterSelectImage;
  final bool fromGallery;
  const SelectImage(
      {Key? key,
      required this.afterSelectImage,
      required this.fromGallery,})
      : super(key: key);

  @override
  State<SelectImage> createState() => _SelectImageState();
}

class _SelectImageState extends State<SelectImage> {
  File? selectedImage;
  Future pickImage() async {
    try {
      XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) throw PlatformException;

      final imageTemp = File(image.path);

      setState(() => selectedImage = imageTemp);
    } catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageC() async {
    try {
      XFile? image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) throw PlatformException;

      final imageTemp = File(image.path);

      setState(() => selectedImage = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: MaterialButton(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Icon(Icons.image),
              onPressed: () async {
                widget.fromGallery ? await pickImage() : await pickImageC();
                if (selectedImage != null) {
                  widget.afterSelectImage(selectedImage!);
                }
              }),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 200,
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: selectedImage != null
                ? Image.file(
                    selectedImage!,
                    fit: BoxFit.fill,
                  )
                : const Center(
                    child: Text(
                    "No image selected",
                    style: TextStyle(color: Color.fromRGBO(1, 1, 1, 1)),
                  )),
          ),
        ),
        const Padding(padding: EdgeInsets.all(8))
      ],
    ));
  }
}
