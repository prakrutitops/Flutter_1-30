import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
          appBar: AppBar(title: Text("Call and SMS App"),),
          body: Center(
              child: Column(

                  children: [

                    ElevatedButton(onPressed: ()
                    {
                        _makingphonecall();
                    }, child: Text("Call")),


                    SizedBox(width: 50,height: 50),
                    ElevatedButton(onPressed: ()
                    {
                      _sendingSMS();
                    }, child: Text("Sms")),

                    SizedBox(width: 50,height: 50),
                    ElevatedButton(onPressed: ()
                    {
                      _sendingMails();
                    }, child: Text("Email")),

                  ],

              ),

          ),

      );
  }

  void _makingphonecall() async
  {
      var num="9275003605";
      var url=Uri.parse("tel:$num");
      if (await canLaunchUrl(url))
      {
        await launchUrl(url);
      }
      else
      {
        throw 'Could not launch $url';
      }
  }

  _sendingSMS() async {
    var url = Uri.parse("sms:9924438261");

    if (await canLaunchUrl(url))
    {
      await launchUrl(url);
    }
    else
    {
      throw 'Could not launch $url';
    }
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
    '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
  _sendingMails() async
  {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'smith@example.com',
      query: encodeQueryParameters(<String, String>{
        'subject': 'Example Subject & Symbols are allowed!',

      }),
    );

    launchUrl(emailLaunchUri);

  }


}
