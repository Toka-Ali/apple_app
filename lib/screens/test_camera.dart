import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
class CameraScreenTest extends StatefulWidget {

  const CameraScreenTest({Key? key,}) : super(key: key);

  @override
  State<CameraScreenTest> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreenTest> {
  File? image;
  /////////////////// initialize list of image /////////////
  List<File> images = [];
  final picker = ImagePicker();
  final imagePicker = ImagePicker();
  void getImage() async{
    XFile? pickedFile = await imagePicker.pickImage(source: ImageSource.camera);

    if (pickedFile == null) {
      return null;
    }

    Directory appDirectory = await getApplicationDocumentsDirectory();
    File newImage = File(appDirectory.path + 'fileName');
    newImage.writeAsBytes(File(pickedFile.path).readAsBytesSync());

    setState(() {
      image = newImage;
      print(newImage.toString()+"fffffffffffffffffffffffffffffffffffffffffffffffffffffffff");
      /////////////// add image to list /////////////////////////
      _listImage(newImage);
      //images.add(newImage);
      print(newImage.path + ' test');
    });

  }
  File? userAvatar;
  _getImage() async{
    final pickedUserAvatar  =await picker.getImage(source: ImageSource.camera);
    pickedUserAvatar == null ? print('select Image') : userAvatar = File(pickedUserAvatar.path);
    print(userAvatar!.path);
    setState(() {
      images.add(userAvatar!);
    });

  }
  _listImage(File image){
    setState(() {
      images.add(image);
    });
  }

  // {
  //    XFile? pick = await ImagePicker().pickImage(source:
  //        ImageSource.camera,
  //      maxHeight: 1080,
  //      maxWidth: 1080,
  //    );
  //    setState(() {
  //      image=File(pick!.path);
  //    });
  //   Navigator.pop(context);
  // }
  // _initUser() async {
  //   if (image == null) {
  //     Center(child: const Text("no photo selected"));
  //   } else {
  //     Image.file(image!);
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          color: Colors.green,
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Camera",
          style: TextStyle(
            color: Colors.green,
          ),),

      ),
      body:
      GridView.builder(
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0
        ),
        itemBuilder: (BuildContext context, int index){
          return Image.file(images[index]);
        },
      ),
      /*ListView(
        children: [
          const SizedBox(height: 50,),
          image !=null ?
              Image.file(image!)
              : const Center(child:
          Text("no photo selected")),
        ],
      ),*/
      floatingActionButton: FloatingActionButton(
        onPressed: _getImage,
        child: const Icon(Icons.camera),
        backgroundColor: Colors.green,
      ),
    );
  }
}



