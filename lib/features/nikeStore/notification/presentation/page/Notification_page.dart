import 'package:flutter/material.dart';

import '../../../../../core/util/constants.dart';
import '../../../../../core/widget/default_appbar.dart';
import '../../../main/presentation/widgets/appbar.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 130),
          child: DefaultAppbar(title: "Notification Page",icon: ImagesMaster.bell,)),
    );
  }
}
