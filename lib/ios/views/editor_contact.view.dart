import 'package:flutter_contacts/models/contact.model.dart';
import 'package:flutter/cupertino.dart';

class EditorContactView extends StatefulWidget {
  final ContactModel model;

  EditorContactView({this.model});

  @override
  _EditorContactViewState createState() => _EditorContactViewState();
}

class _EditorContactViewState extends State<EditorContactView> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: widget.model == null
                ? Text("Novo Contato")
                : Text("Editar Contato"),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Form(
                child: Column(
                  children: <Widget>[
                    CupertinoTextField(
                      placeholder: widget.model?.name ?? "Nome",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CupertinoTextField(
                      placeholder: widget.model?.phone ?? "Telefone",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CupertinoTextField(
                      placeholder: widget.model?.email ?? "E-mail",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: CupertinoButton.filled(
                        onPressed: () {},
                        child: Text(
                          "Salvar",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
