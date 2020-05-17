import 'package:flutter/material.dart';

import 'dart:async';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros = new List();
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregar10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        //_agregar10();
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listas'),
          backgroundColor: Colors.redAccent[700],
        ),
        body: Stack(
          children: <Widget>[_crearListas(), _crearLoading()],
        ));
  }

  Widget _crearListas() {
    return RefreshIndicator(
      onRefresh: obtenerPaginas,
      child: ListView.builder(
          controller: _scrollController,
          itemCount: _listaNumeros.length,
          itemBuilder: (BuildContext context, int index) {
            final imagen = _listaNumeros[index];

            return FadeInImage(
                placeholder: AssetImage('assets/jar-loading.gif'),
                fit: BoxFit.contain,
                image: NetworkImage(
                    'https://i.picsum.photos/id/$imagen/500/400.jpg'));
          }),
    );
  }

  void _agregar10() {
    for (var i = 1; i <= 10; i++) {
      _listaNumeros.add(_ultimoItem++);
      setState(() {});
    }
  }

  Future<Null> obtenerPaginas() {
    final duration = Duration(seconds: 2);
    new Timer(duration, () {
      _listaNumeros.clear();
      _ultimoItem++;
      _agregar10();
    });

    return Future.delayed(duration);
  }

  Future<Null> fetchData() async {
    _isLoading = true;
    setState(() {});
    final duration = Duration(seconds: 2);
    return new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;

    _scrollController.animateTo(_scrollController.position.pixels + 50,
        duration: Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
    _agregar10();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      );
    } else {
      return Column();
    }
  }
}
