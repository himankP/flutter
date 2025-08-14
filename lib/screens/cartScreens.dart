import 'package:flutter/cupertino.dart';

class CartScreens extends StatelessWidget {
  const CartScreens({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(children: [Image.asset("images/image1.jpg"), Text("mens cotton jachet"), Text("rs.55.99")]);
  }
}
