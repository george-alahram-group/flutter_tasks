import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/custom_widget/widgets/my_cart/MyCart.dart';

import 'custom_widget/widgets/customer_services/CustomerServicesPage.dart';

class MyHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CustomerServicesPage(
    userName: 'El Mutawakel for Cars',
    location: 'Cairo, Egypt'
  );
}
