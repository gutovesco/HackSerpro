import 'package:flutter/material.dart';
import 'package:megahack/pages/chat/Widget/destinatario.dart';
import 'package:megahack/pages/chat/Widget/remetente.dart';

import '../lojas/lojas_app_theme.dart';

class Chat extends StatefulWidget {
  const Chat({
    Key key,
  }) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController _text = new TextEditingController();
  ScrollController _scrollController = ScrollController();
  var childList = <Widget>[];

  int minutos = 39;

  @override
  void initState() {
    super.initState();

    childList.add(Align(
        alignment: Alignment(0, 0),
        child: Container(
          margin: const EdgeInsets.only(top: 5.0),
          height: 25,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              )),
          child: Center(
              child: Text(
            "Hoje",
            style: TextStyle(fontSize: 11),
          )),
        )));
    
  }
  

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(
                    height: 65,
                    child: Container(
                      color: Color(0xff6a097d),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          //Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                            child: Container(
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    "assets/images/old_floricultura.png"),
                              ),
                              height: 55,
                              width: 55,
                              padding: const EdgeInsets.all(0.0),
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 5.0,
                                        spreadRadius: -1,
                                        offset: Offset(0.0, 5.0))
                                  ]),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Neiva Flores",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                          //Spacer(),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 0,
                    color: Colors.black54,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    // height: 500,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey[200],
                      child: SingleChildScrollView(
                          controller: _scrollController,
                          // reverse: true,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: childList,
                          )),
                    ),
                  ),
                  Divider(height: 0, color: Colors.black26),
                  // SizedBox(
                  //   height: 50,
                  Container(
                    child: pesquisar(),
                    color: Colors.grey[200],
                  ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget pesquisar() {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      width: double.infinity,
      height: 50,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(right: 5, left: 5),
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: TextField(
              controller: _text,
              decoration: InputDecoration(
                  hintText: 'Digite uma mensagem',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                  border: InputBorder.none,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      var mi = minutos;
                      this.setState(() {
                        childList.add(Align(
                          alignment: Alignment(1, 0),
                          child: Remetente(
                            content: _text.text,
                            time: '09:${mi}',
                          ),
                        ));
                        minutos += 1;
                      });

                      resposta();
                      _text.text = '';
                      _text.clear();

                    },
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Icon(
                        Icons.send,
                        color: Colors.grey,
                      ),
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }

 void resposta(){
   switch(childList.length){
     case 0 :  break;
      case 2 : this.setState(() {
      childList.add(Align(
      alignment: Alignment(-1, 0),
      child: Destinatario(
        content: 'Olá, meu nome é Neiva e serei responsável por realizar o seu atendimento! Como posso te ajudar?',
        time: '09:40',
      ),
    ));
    
    });
    break;
   }
 }

}
