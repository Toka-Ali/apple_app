
import 'package:flutter/material.dart';
class RustDetails extends StatelessWidget {
  const RustDetails({Key? key}) : super(key: key);

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
        title: const Text("Apple",
          style: TextStyle(
            color: Colors.green,
          ),),

      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/tree.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Text("rust details 333333333333333333",
            style: TextStyle(
              fontSize: 30,
            ),),

        ],
      ),
    );
  }
}
