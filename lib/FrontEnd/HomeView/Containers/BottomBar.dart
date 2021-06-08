import 'package:flutter/material.dart';
import 'package:flashcard_app/Controller.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //Center Row contents horizontally,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: TextButton(
                style: ButtonStyle(
                  alignment: Alignment.center,
                  foregroundColor: MaterialStateProperty.all<Color>(Color(0xff8FDC97)),
                ),
                onPressed: () {Navigator.of(context).pushNamed('/poha');},
                child: Text('Import',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    )
                ),
              )
          ),
          Expanded(
              child: TextButton(
                style: ButtonStyle(
                  alignment: Alignment.center,
                  foregroundColor:MaterialStateProperty.all<Color>(Color(0xff8FDC97)),
                ),
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.NO_HEADER,
                    animType: AnimType.BOTTOMSLIDE,
                    title: 'Esse aplicativo foi feito por:',
                    desc: 'Leonardo de Jesus Diz Conde;\n'
                        +  'Marcelo Maués Botelho;\n'
                        +  'Victor Yuji Saito;\n'
                        +  'Vinicius Prado Vasconcelos;',
                    btnOkOnPress: () {},
                  )..show();
                },
                child: Text('Sobre',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    )
                ),
              )
          ),
        ],
      ),
      shape: CircularNotchedRectangle(),
    );
  }
}