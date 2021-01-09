import 'package:flutter_contacts/ios/views/editor_contact.view.dart';
import 'package:flutter_contacts/ios/styles.dart';
import 'package:flutter_contacts/ios/views/details.view.dart';
import 'package:flutter/cupertino.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text("Meus Contatos"),
            trailing: CupertinoButton(
              child: Icon(
                CupertinoIcons.add,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => EditorContactView(),
                  ),
                );
              },
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoTextField(
                    placeholder: "Pesquisar...",
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                /*image: DecorationImage(
                                  image: NetworkImage(
                                      ""),
                                ),*/
                                borderRadius: BorderRadius.circular(48),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "User",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      "XX XXXXX-XXXX",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CupertinoButton(
                              child: Icon(
                                CupertinoIcons.person,
                                color: primaryColor,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => DetailsView(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
