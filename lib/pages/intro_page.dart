import 'package:ahlat/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset('lib/images/logo.jpeg', height: 200,),
            ),

            const SizedBox(height: 50,),

            const Text(
              "Deri İşleme Sanatı",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 50,),

            const Text(
              "El yapımı premium deri ürünler",
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 50,),

            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(30.0),
                child: Center(child: const Text(
                  "Alışverişe Başla",
                  style: TextStyle(
                      color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )),
              ),
            )


          ],),
        ),
      ),
    );
  }
}
