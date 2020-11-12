import '../widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Adjust your meal Selection",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile("Gluten-Free",
                    "Only include gluten free meals", _glutenFree, (value) {
                  setState(() {
                    _glutenFree = value;
                  });
                }),
                _buildSwitchListTile("Lactose-Free",
                    "Only include Lactose free meals", _lactoseFree, (value) {
                  setState(() {
                    _lactoseFree = value;
                  });
                }),
                _buildSwitchListTile("Vegetarian",
                    "Only include Vegetarian meals", _vegetarian, (value) {
                  setState(() {
                    _vegetarian = value;
                  });
                }),
                _buildSwitchListTile("Vegan",
                    "Only include vegan free meals", _vegan, (value) {
                  setState(() {
                    _vegan = value;
                  });
                }),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSwitchListTile(String title, String description,
      var currentValue, Function updateValue) {
    return SwitchListTile(
        title: Text(title),
        value: currentValue,
        subtitle: Text(description),
        onChanged: updateValue);
  }
}
