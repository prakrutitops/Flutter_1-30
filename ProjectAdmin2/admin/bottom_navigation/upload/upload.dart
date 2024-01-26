import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import '../../../constants.dart';

late String _myCategory;

class AdminUpload extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AdminUploadPage();
  }
}

class AdminUploadPage extends State<AdminUpload> {
  var size;

  var upload_category = TextEditingController();

  XFile? _imageFile;
  final String uploadUrl = 'https://topsapi.000webhostapp.com/flutter_project_morning/Upload_category/upload_category_main_image.php';
  final ImagePicker _picker = ImagePicker();

  void _pickImage() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      setState(() {
        _imageFile = pickedFile;
        //_imageFile=  File(pickedFile.path);
      });
    } catch (e)
    {
      print("Image picker error " + e.toString());
    }
    await uploadImage(_imageFile, uploadUrl+"?data="+upload_category.text.toString());
  }

  Future<String?> uploadImage(filepath, url) async {
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.files.add(await http.MultipartFile.fromPath('profile_pic', filepath));
    var res = await request.send();
    return res.reasonPhrase;
  }

  Future<List> getCategoryName() async {
    var data = await http.get(Uri.parse("https://topsapi.000webhostapp.com/flutter_project_morning/Category/category_view.php"));
    return json.decode(data.body);
  }

  XFile? _categoryImageFile;
  final String categoryUploadUrl = 'https://topsapi.000webhostapp.com/flutter_project_morning/Upload_category/upload_category_sub_image_insert.php';
  final ImagePicker _categoryPicker = ImagePicker();

  void _categoryPickImage() async {
    try {
      final pickedFile = await _categoryPicker.pickImage(source: ImageSource.gallery);
      setState(() {
        _categoryImageFile = pickedFile;
      });
    } catch (e) {
      print("Image picker error " + e.toString());
    }
    await categoryUploadImage(_categoryImageFile, categoryUploadUrl+"?id="+_myCategory.toString());
  }

  Future<String?> categoryUploadImage(filepath, url) async {
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.files.add(await http.MultipartFile.fromPath('profile_pic', filepath));
    var res = await request.send();
    return res.reasonPhrase;
  }

  @override
  void initState(){
    super.initState();
    setState(() {
      _myCategory;
      //print(_myCategory);
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kLightGold,
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(size.width*5/100 , size.height*33/100, size.width*5/100, 0),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: double.infinity,
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: kBrown,
                    padding: const EdgeInsets.all(kPaddingM),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        backgroundColor: kWhite,
                        title: Row(children: [Icon(Icons.add,color: kBrown,),Text("\tAdd Category", style: TextStyle(color: kBrown),)],),
                        content: Container(
                          height: size.height*14/100,
                          child: Column(
                            children: [
                              TextField(
                                controller: upload_category,
                                decoration: InputDecoration(
                                  hintText: "Input Category Name",
                                ),
                              ),
                              SizedBox(height: size.height*1/100),
                              ConstrainedBox(
                                constraints: const BoxConstraints(
                                  minWidth: double.infinity,
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: kBrown,
                                    padding: const EdgeInsets.all(kPaddingM),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  onPressed: () {
                                    if(!upload_category.text.isEmpty){
                                      _pickImage();
                                    }
                                    else{
                                      Fluttertoast.showToast(msg: "Please Input Category Name",toastLength: Toast.LENGTH_LONG,timeInSecForIosWeb: 1);
                                    }
                                  },
                                  child: Text("Select Image".toUpperCase(),
                                    style: Theme.of(context).textTheme.subtitle1!.copyWith(color: kLightGold,fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Text("Cancel",style: TextStyle(color: kBrown)),
                          ),
                          ElevatedButton(
                            onPressed: () {

                              print("clicked");
                              if(upload_category.text.isNotEmpty && _imageFile!=null)
                              {

                                Fluttertoast.showToast(msg: "Category Added Successfully",toastLength: Toast.LENGTH_LONG,timeInSecForIosWeb: 1);
                                Navigator.of(ctx).pop();

                              }
                              else{
                                if(upload_category.text.isEmpty ){
                                  Fluttertoast.showToast(msg: "Please Input Category Name",toastLength: Toast.LENGTH_LONG,timeInSecForIosWeb: 1);
                                }
                                else if(_imageFile==null){
                                  Fluttertoast.showToast(msg: "Please Select Category Image",toastLength: Toast.LENGTH_LONG,timeInSecForIosWeb: 1);
                                }
                              }
                            },
                            child: Text("Add",style: TextStyle(color: kBrown)),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text("Upload Category".toUpperCase(),
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(color: kGold,fontStyle: FontStyle.italic, fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height*2/100),
            Padding(
              padding: EdgeInsets.fromLTRB(size.width*5/100 , 0, size.width*5/100, size.height*33/100),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: double.infinity,
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: kBrown,
                    padding: const EdgeInsets.all(kPaddingM),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        backgroundColor: kWhite,
                        title: Row(children: [Icon(Icons.upload, color: kBrown,),Text("\tUpload Images", style: TextStyle(color: kBrown),)],),
                        content: Container(
                          height: size.height*14/100,
                          child: Column(
                            children: [
                              Expanded(
                                child: FutureBuilder<List>(
                                  future: getCategoryName(),
                                  builder: (ctx,ss) {

                                    print("Data not called");
                                    if(ss.hasData)
                                    {
                                      print("Data called");
                                      return Items(list:ss.data!!);
                                    }
                                    else{
                                      return Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }
                                  },
                                ),
                              ),
                              SizedBox(height: size.height*1/100),
                              ConstrainedBox(
                                constraints: const BoxConstraints(
                                  minWidth: double.infinity,
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: kBrown,
                                    padding: const EdgeInsets.all(kPaddingM),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  onPressed: () {
                                    if(_myCategory!=null)
                                    {
                                      _categoryPickImage();
                                    }
                                    else{
                                      Fluttertoast.showToast(msg: "Please Select Category",toastLength: Toast.LENGTH_LONG,timeInSecForIosWeb: 1);
                                    }
                                  },
                                  child: Text("Select Images".toUpperCase(),
                                    style: Theme.of(context).textTheme.subtitle1!.copyWith(color: kGold,fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Text("Cancel",style: TextStyle(color: kBrown)),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              print("Tops1234");
                              print(_myCategory);

                              if(_myCategory!=null && _categoryImageFile!=null){
                                Fluttertoast.showToast(msg: "Images Uploaded Successfully",toastLength: Toast.LENGTH_LONG,timeInSecForIosWeb: 1);
                                Navigator.of(ctx).pop();
                              }
                              else{
                                if(_myCategory==null){
                                  Fluttertoast.showToast(msg: "Please Select Category",toastLength: Toast.LENGTH_LONG,timeInSecForIosWeb: 1);
                                }
                                else if(_categoryImageFile==null){
                                  Fluttertoast.showToast(msg: "Please Select Images",toastLength: Toast.LENGTH_LONG,timeInSecForIosWeb: 1);
                                }
                              }
                            },
                            child: Text("Upload",style: TextStyle(color: kBrown)),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text("Upload Images".toUpperCase(),
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(color: kGold,fontStyle: FontStyle.italic, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Items extends StatefulWidget {
  List list;
  Items({required this.list});

  @override
  State<StatefulWidget> createState() {
    return _Items(list_: list);
  }
}

class _Items extends State<Items>{
  List list_;
  _Items({required this.list_});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DropdownButton(

        hint: Padding(
          padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*14/100, 0, 0, 0),
          child: Text("Select Category", style: TextStyle(color: kBrown),),
        ),
        items: list_.map((item) {

          return DropdownMenuItem
            (


            value: item['id'].toString(),
            child: Text(item['category_name']),


          );


        }

        ).toList(),
        onChanged: (newVal) {
          setState(() {
            _myCategory = newVal!;
          });
        },
        value: _myCategory,
      ),
    );
  }
}