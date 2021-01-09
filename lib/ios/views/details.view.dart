import 'package:flutter_contacts/ios/views/address.view.dart';
import 'package:flutter_contacts/ios/styles.dart';
import 'package:flutter_contacts/ios/views/editor_contact.view.dart';
import 'package:flutter_contacts/models/contact.model.dart';
import 'package:flutter/cupertino.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text("Contato"),
            trailing: CupertinoButton(
              child: Icon(
                CupertinoIcons.pen,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => EditorContactView(
                      model: ContactModel(
                        id: "1",
                        name: "User",
                        email: "email@email.com",
                        phone: "XX XXXXX-XXXX",
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                  width: double.infinity,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      /*image: DecorationImage(
                        image: NetworkImage(
                            ""),
                      ),*/
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "User",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "XX XXXXX-XXXX",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "email@email.com",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CupertinoButton(
                      onPressed: () {},
                      child: Icon(
                        CupertinoIcons.phone,
                      ),
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      child: Icon(
                        CupertinoIcons.mail,
                      ),
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      child: Icon(
                        CupertinoIcons.photo_camera,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: double.infinity,
                            ),
                            Text(
                              "Endereço",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "Rua do Desenvolvedor, 256",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "Campo Grande/MS",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CupertinoButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => AddressView(),
                            ),
                          );
                        },
                        child: Icon(
                          CupertinoIcons.location,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
