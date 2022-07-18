
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
                "Apple Cedar Rust Details",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Cedar apple rust is a fungal disease found in the Eastern region of North America caused by Gymnosporangium juniperivirginianae. This disease can affect a wide range of hosts across many species of cedar, apple, pear, and quince. There is a unique dependency for this disease to develop in hosts like cedar in order to eventually infect tree fruit crops. The presence of cedar apple rust can reduce the quality and aesthetic appearance of the fruit, often rendering it unfit for fresh market sale. With a large enough infection, the foliage of the leaves will be negatively affected and likely cause defoliation in the canopy.",
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
                "1.	Choose a planting site that is distanced from a forest line 2.	Remove cedar trees in close proximity to the orchard 3.	Prune diseased branches of cedar trees less than a mile from the orchard 4.	Prune infected branches 5.	Plant disease resistant cultivars ",
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
              const Text("1.	Choose resistant cultivars when available. 2.	Rake up and dispose of fallen leaves and other debris from under trees. 3.	Remove galls from infected junipers. In some cases, juniper plants should be removed entirely. 4.	Apply preventative, disease-fighting fungicides labeled for use on apples weekly, starting with bud break, to protect trees from spores being released by the juniper host. This occurs only once per year, so additional applications after this springtime spread are not necessary. 5.	On juniper, rust can be controlled by spraying plants with a copper solution (0.5 to 2.0 oz/ gallon of water) at least four times between late August and late October. 6.	Safely treat most fungal and bacterial diseases with SERENADE Garden. This broad spectrum bio-fungicide uses a patented strain of Bacillus subtilis that is registered for organic use. Best of all, SERENADE is completely non-toxic to honey bees and beneficial insects. 7.	Containing sulfur and pyrethrins, Bonide® Orchard Spray is a safe, one-hit concentrate for insect attacks and fungal problems. For best results, apply as a protective spray (2.5 oz/ gallon) early in the season. If disease, insects or wet weather are present, mix 5 oz in one gallon of water. Thoroughly spray all parts of the plant, especially new shoots. 8.	Contact your local Agricultural Extension office for other possible solutions in your area. ",
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
