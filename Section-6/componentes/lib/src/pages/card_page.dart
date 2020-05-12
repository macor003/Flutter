import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        padding: EdgeInsets.all(5.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 10.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 10.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 10.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 10.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 10.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,      
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_size_select_actual,
              color: Colors.orange,
            ),
            title: Text('Titulo'),
            subtitle:
                Text('Soy el subtitulo de esta tarjeta para darle estilo'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Aceptar')),
              FlatButton(onPressed: () {}, child: Text('Cancelar'))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          /* Image(
              image: NetworkImage(
                  'https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg')), */
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Titulo de la imagen')),
        ],
      ),
    );
  }
}
