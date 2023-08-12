import 'package:flutter/material.dart';


class MySwitchListTile extends StatefulWidget {
  @override
  _MySwitchListTileState createState() => _MySwitchListTileState();
}

class _MySwitchListTileState extends State<MySwitchListTile> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchListTile Example'),
      ),
      body: SwitchListTile(
        title: Text('Enable Feature'),
        value: _switchValue,
        onChanged: (newValue) {
          setState(() {
            _switchValue = newValue;
          });
        },
        activeThumbImage: AssetImage('images/active_thumb.png'), // Replace with your image asset
        controlAffinity: ListTileControlAffinity.leading, // Change the alignment of the Switch
      ),
    );
  }
}
