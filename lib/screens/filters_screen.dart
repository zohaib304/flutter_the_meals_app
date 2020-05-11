import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var glutenFree = false;
  var vegetarian = false;
  var vegan = false;
  var lactosFree = false;

  Widget _buildSwtichListTile(String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal collection',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwtichListTile(
                  'Gluten Free',
                  'Only include gluten-free meals',
                  glutenFree,
                  (newValue) {
                    setState(() {
                      glutenFree = newValue;
                    });
                  },
                ),
                _buildSwtichListTile(
                  'Vegetarian',
                  'Only include vegetarian meels',
                  vegetarian,
                  (newValue) {
                    setState(() {
                      vegetarian = newValue;
                    });
                  },
                ),
                _buildSwtichListTile(
                  'Vegan',
                  'Only include Vegan meals',
                  vegan,
                  (newValue) {
                    setState(() {
                      vegan = newValue;
                    });
                  },
                ),
                _buildSwtichListTile(
                  'Lactor Free',
                  'Only include lactose-free meals',
                  lactosFree,
                  (newValue) {
                    setState(() {
                      lactosFree = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
