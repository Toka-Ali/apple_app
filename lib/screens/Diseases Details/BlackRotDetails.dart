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
                "The fungus, Physalospora obtusa (Botryosphaeia obtusa), causes black rot. Highly susceptible crabapple varieties may lose most of their leaves, which weakens the tree and reduces flowering the next year. The disease begins on the leaf as a purple speck that enlarges to have a brown or tan center, which looks like a frog’s eye. Heavily infected leaves drop from the tree. Limbs may have slightly sunken, reddish brown areas called cankers. Infected fruits begin with tiny red or purple spots occurring opposite the stem end. After a few weeks the spots enlarge and have alternating zones of black and brown. The rot eventually affects the entire fruit, which wrinkles, mummifies and often remains attached to the tree.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Prevention",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Treating black rot on apple trees starts with sanitation. Since fungal spores overwinter on fallen leaves, mummified fruits, dead bark, and cankers, it’s important to keep all the fallen debris and dead fruit cleaned up and away from the tree. During the winter, check for red cankers and remove them by cutting them out or pruning away the affected limbs at least 6 inches (15 cm.) beyond the wound. Destroy all infected tissue immediately and keep a watchful eye out for new signs of infection. Once black rot disease is under control in your tree and you’re again harvesting healthy fruits, make sure to remove any injured or insect-invaded fruits to avoid re-infection. Although general-purpose fungicides, like copper-based sprays and lime sulfur, can be used to control black rot, nothing will improve apple black rot like removing all sources of spores.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Treatment",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Remove and discard dead branches and diseased fruit, called mummies, where the fungus overwinters. The fungicides captan and thiophanate-methyl are effective if applied early and at regular intervals throughout the season.",
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
