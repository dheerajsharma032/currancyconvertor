import 'package:flutter/Material.dart';

class Material extends StatefulWidget {
  const Material({super.key});

  @override
  State<Material> createState() => _Material();
}

class _Material extends State<Material> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(0, 37, 37, 37),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                onSubmitted: (value) {
                  print(value);
                },
                style: TextStyle(
                    color: Color.fromARGB(255, 240, 245, 250),
                    fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  hintText: "Enter The Amoubt In USD",
                  hintStyle: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                  ),
                  prefixIcon: Icon(Icons.attach_money),
                  prefixIconColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  result = double.parse(textEditingController.text) * 81;
                });
              },
              child: Text("Click Me"),
            ),
          ],
        ),
      ),
    );
  }
}
