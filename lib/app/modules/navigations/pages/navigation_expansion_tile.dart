import 'package:flutter/material.dart';



class NavigationExpansionTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionTile"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) => Item(data[index]),
        itemCount: data.length,
      ),
    );
  }
}

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class Item extends StatelessWidget {
  const Item(this.sample);

  final SampleData sample;

  Widget _buildTiles(SampleData root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<SampleData>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(sample);
  }
}

class SampleData {
  SampleData(this.title, [this.children = const <SampleData>[

    
  ]]);

  final String title;
  final List<SampleData> children;
}

final List<SampleData> data = <SampleData>[
  SampleData(
    "Food & Beverages",
    <SampleData>[
      SampleData(
        "Drinks",
        <SampleData>[
          SampleData("Tea"),
          SampleData("Coffee"),
          SampleData("Juices"),
        ],
      ),
      SampleData("Street food"),
    ],
  ),
  SampleData(
    "Fashion",
    <SampleData>[
      SampleData("Men's fashion"),
      SampleData("Women's fashion"),
    ],
  ),
  SampleData(
    "TVs & Appliances",
    <SampleData>[
      SampleData("Television"),
      SampleData("Washing Machine"),
      SampleData(
        "Kitchen Appliances",
        <SampleData>[
          SampleData("Microwave Ovens"),
          SampleData("Oven Toaster Grills (OTG)"),
          SampleData("Juicer/Mixer/Grinder"),
        ],
      ),
    ],
  ),
];
