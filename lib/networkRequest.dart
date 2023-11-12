import 'package:flutter/material.dart';

class networkRequest extends StatefulWidget {
  const networkRequest({super.key});

  @override
  State<networkRequest> createState() => _networkRequestState();
}

class _networkRequestState extends State<networkRequest> {

  String? emaildata; //nullable variable
  // This is useful when you're working with data that may or may not be available at a given time.
  // In your code, emailData is initially set to null and is later updated with a non-null value when the email data is received.

  // simulate network req

  Future<void> getData() async{

    print("This message is showed 5s before email");

    //simulate get email
    String email = await Future.delayed(Duration(seconds: 5),(){
      return("shankavial@gmail.com");
    });

    setState(() {
      emaildata = email;
    });

  }

  Future<String> addName() async {
    String name = await Future.delayed(Duration(seconds: 3), (){
      return("Shanka Visal Amarasekara");
    });
    return name;
  }

  Future<void> getName() async{
    print(await addName());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    getName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Asynchronous programming"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Other Codes',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
                'This message is showed 5s before email'
            ),
            Text(
                emaildata ?? "Please wait.. Still Loading" //null-aware operator
            ),
            //If emailData is null (indicating that the data is not yet available), the user will see "Please wait.. Still Loading" and
            // once the data is available, the UI will update to show the actual email data.
          ],
        ),
      ),
    );
  }
}




