import 'package:flutter/material.dart';

void main(List<String> args) {
  print("hello");
  runApp(MaterialApp(home: Scaffold(body: Mylisttile())));
}

class Mylisttile extends StatelessWidget {
  const Mylisttile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset("images/image1.jpg"),
          title: Text('headline'),
          subtitle: Text(
            'supportingtext supporting textsupporting textsupporting textsupportingtextsupportingtextsupportingtext',
          ),
          trailing: Icon(Icons.favorite_rounded),
        ),
        ListTile(
          leading: Image.asset("images/image1.jpg"),
          title: Text('headline'),
          subtitle: Text(
            'supportingtext supporting textsupporting textsupporting textsupportingtextsupportingtextsupportingtext',
          ),
          trailing: IconButton(
            onPressed: () {
              print("bjhjh");
            },
            icon: Icon(Icons.favorite_rounded),
          ),
        ),

        ListTile(
          leading: Image.asset("images/image1.jpg"),
          title: Text('headline'),
          subtitle: Text(
            'supportingtext supporting textsupporting textsupporting textsupportingtextsupportingtextsupportingtext',
          ),
          trailing: Radio(value: "asd", groupValue: "sda", onChanged: (value) {}),
        ),
        ListTile(
          leading: Image.asset("images/image1.jpg"),
          title: Text('headline'),
          subtitle: Text(
            'supportingtext supporting textsupporting textsupporting textsupportingtextsupportingtextsupportingtext',
          ),
          trailing: Radio(value: "asd", groupValue: "sda", onChanged: (value) {}),
        ),
        ListTile(
          leading: Image.asset("images/image1.jpg"),
          title: Text('headline'),
          subtitle: Text(
            'supportingtext supporting textsupporting textsupporting textsupportingtextsupportingtextsupportingtext',
          ),
          trailing: Radio(value: "asd", groupValue: "sda", onChanged: (value) {}),
        ),

        Slider(value: 0.5, secondaryTrackValue: 1, label: "asd", onChanged: (double value) {}),

        Switch(
          // This bool value toggles the switch.
          value: false,

          onChanged: (bool value) {
            print("switch");
            // This is called when the user toggles the switch.
          },
        ),
        TextField(obscureText: true, decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Password')),
        Checkbox(isError: true, tristate: true, value: false, onChanged: null),
      ],
    );
  }
}
