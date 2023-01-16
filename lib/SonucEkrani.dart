import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {

  bool sonuc;

  SonucEkrani({this.sonuc});


  @override
  _SonucEkraniState createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.sonuc ? Image.asset("resimler/gulenresim.png") : Image.asset("resimler/uzgunresim.png"),
            Text(widget.sonuc ? "KAZANDINIZ" : "KAYBETTİNİZ",style: TextStyle(color: Colors.black54,fontSize: 36),),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text("TEKRAR DENE"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple, // buton çerçevesi rengi
                  onPrimary: Colors.white, // buton içindeki yazı rengi
                ),

                onPressed: (){
                  Navigator.pop(context); // butona bastığımda hangi sayfadan geldiysek oraya geri dönmüş olacak.

                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
