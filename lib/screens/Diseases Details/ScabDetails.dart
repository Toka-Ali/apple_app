import 'package:flutter/material.dart';

class ScabDetails extends StatelessWidget {
  const ScabDetails({Key? key}) : super(key: key);

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
                "Apple Scab Details",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Apple scab is a common fungal disease affecting the leaves and fruit to the point where the tree loses its leaves, and the apples are so blemished that they become unfit for eating. The apple scab fungus thrives in areas with lots of rain and high humidity, and during a warm, wet spring. Because there is no treatment for infected trees, early identification and prevention are crucial for its control.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Causes",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "The fungus that causes apple scab (Venturia inaequalis) overwinters in diseased leaves on the ground. In the spring, the fungus in the leaves produces spores and releases them into the air. The spores are then carried by wind, rain, or irrigation to growing tips, leaves, flowers, or developing fruit on the same tree or of nearby trees. When the spores land on a wet surface, and the temperature is around 70 degrees Fahrenheit, they will germinate and start a new, secondary infection. However, the spores require several hours of moisture to do this. A secondary infection can generate new spores within nine to 17 days, and this disease cycle can repeat itself many times during the growing season in warm, wet weather.",
                style: TextStyle(
                  fontSize: 18.0,
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
                "Your best bet to prevent apple scab is to choose one of the disease-resistant varieties. Their resistance usually ranges from moderately resistant to very resistant. If you have your mind set on a variety that is susceptible to apple scab, plant a dwarf or semi-dwarf tree, which will allow you to apply a preventative fungicide on the entire tree (more about that below). Proper sanitation is key to prevent the spread of the fungus. Thoroughly remove fallen leaves, not only in the fall but also during the growing season. If apple scab is present, do not throw those leaves in the compost but dispose of them in the garbage. Pruning is another important measure to control apple scab. In a tree with an open canopy where the leaves can dry quickly after a spring shower, the spores are less likely to germinate. Spraying an infected tree with a fungicide is only an option if the tree has lost most of its leaves for three or more consecutive years.",
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
                "Fungicides against apple scab can only protect healthy trees from getting infected, they do not get rid of the fungus on an infected tree. Once the tree shows symptoms of the disease during the growing season, spraying a fungicide won’t have any effect. All that a fungicide does is create a protective coating so that the spores that land on the leaves or fruit cannot become active, thereby breaking the disease cycle on the tree. Don’t apply indiscriminately a fungicide as a preventative measure on all your apple or crabapple trees, but only spray a tree that has been infected by the fungus. Again, the rule of thumb is if the tree has lost its leaves prematurely for three consecutive years. Timing is key. Spray when the bud growth starts, and repeat with the frequency and in the intervals specified on the fungicide label. When and how often to apply a fungicide also depends on the weather conditions, and the severity of the infection. Before you spray again, always thoroughly inspect the leaves for symptoms to decide whether another application of the fungicide is indeed necessary. There are different types of fungicides for eating apples and crabapples, so make sure the fungicide is suitable for eating apples. Fungicides available to homeowners are products with captan, lime-sulfur, and dusting wettable sulfur as active ingredients. ",
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
