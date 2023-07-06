import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("American Wild Horse Campaign"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          // learn more
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          // about
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "About",
          ),
          // user profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        onPressed: () {},
        label: const Text("Contribute"),
        icon: const Icon(Icons.add_a_photo),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good Afternoon, Akshat!",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      _buildCTABtn(
                        text: "Donate",
                        onPressed: () {},
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      _buildCTABtn(
                        text: "Take Action",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      _buildCTABtn(
                        text: "About Us",
                        onPressed: () {},
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      _buildCTABtn(
                        text: "About Wildhorse ANI",
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          _buildBlogCard(
            context,
            title: "Remembering Nancy Killian, Wild Horse Advocate",
            image:
                "https://americanwildhorsecampaign.org/sites/default/files/hero_img/273297336_5070046879721585_5356391052781202942_n%20%281%29.jpeg",
            onPressed: () {},
          ),
          _buildBlogCard(
            context,
            title: "Viewing Etiquette For Wild Horses And Burros",
            image:
                "https://americanwildhorsecampaign.org/sites/default/files/hero_img/_A1_0435%20%281%29.jpeg",
            onPressed: () {},
          ),
          _buildBlogCard(
            context,
            title: "UC Davis Hackathon Helps Wild Horses",
            image:
                "https://americanwildhorsecampaign.org/sites/default/files/hero_img/hackathon.jpeg",
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Card _buildBlogCard(
    BuildContext context, {
    required String title,
    required String image,
    required void Function() onPressed,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              image,
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            // button that says "read more" with an icon next to it
            OutlinedButton(
              onPressed: () {},
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Read More"),
                  Icon(Icons.open_in_new),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded _buildCTABtn({
    required String text,
    required void Function() onPressed,
  }) {
    return Expanded(
      flex: 25,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
