import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlackRotDetails extends StatelessWidget {
  const BlackRotDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.green,
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Apple",
          style: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Black Rot Details",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Black rot is an apple disease that affects fruit, leaves, and bark caused by the fungus Botryosphaeria Obedusa. It can also jump into healthy tissues on pear or quince trees, but it is usually a secondary fungus of weak or dead tissue on other plants. Begin checking apple trees for signs of infection about a week after the petals have fallen from the apple blossoms. Early symptoms are often limited to leaf symptoms such as purple spots on the upper leaf surfaces. As these spots age, the edges remain purple, but the centers dry out and turn yellow to brown. Over time, the spots expand, and severely affected leaves fall from the tree. Affected branches or limbs will show distinct red-brown sunken areas that expand each year. Fruit infection is the most destructive form of this pathogen and begins with infected flowers before the fruits expand. When the fruits are small and green, you will notice red spots or purple pustules that swell like the fruit. Ripe fruit lesions take on the appearance of a bull's-eye, with brown and black areas extending outward from a central point on each lesion. Black rot usually causes flower end rot or mummification of fruits on the tree.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Black Rot Control",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Treatment for black mold on apple trees begins with disinfection. Since fungal spores overwinter on fallen leaves, mummified fruit, dead bark, and cankers, it is important to clean all fallen debris and dead fruit away from the tree. During the winter, check for red sores and remove them by clipping them or trimming the affected ends at least 6 inches (15 cm) behind the wound. Destroy all infected tissue immediately and watch for signs of new infection. Once you control black rot in your tree and you are back to harvesting healthy fruits, be sure to remove any fruits that are infected or infested by insects to avoid re-infection. Although general-purpose fungicides, such as copper-based sprays and lime sulfur, can be used to control black mold, nothing will improve black apple rot like removing all sources of spores.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
