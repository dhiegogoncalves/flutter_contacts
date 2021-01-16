import 'package:flutter/material.dart';
import 'package:flutter_contacts/android/views/editor_contact.view.dart';
import 'package:flutter_contacts/android/widgets/contact-list-item.widget.dart';
import 'package:flutter_contacts/android/widgets/search-appbar.widget.dart';
import 'package:flutter_contacts/controllers/home.controller.dart';
import 'package:flutter_contacts/models/contact.model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = HomeController();

  @override
  void initState() {
    controller.search('');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: SearchAppBar(
          controller: controller,
        ),
      ),
      body: Observer(
        builder: (_) => ListView.builder(
          itemCount: controller.contacts.length,
          itemBuilder: (context, index) {
            return ContactListItem(
              model: controller.contacts[index],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditorContactView(
                model: ContactModel(id: 0),
              ),
            ),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
