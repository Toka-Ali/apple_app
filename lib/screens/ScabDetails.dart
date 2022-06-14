
import 'package:flutter/material.dart';
class ScabDetails extends StatelessWidget {
  const ScabDetails({Key? key}) : super(key: key);

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
          const Text("scab details 22222222222222222",
            style: TextStyle(
              fontSize: 30,
            ),),

        ],
      ),
    );
  }
}
