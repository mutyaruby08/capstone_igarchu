// ignore_for_file: avoid_print, unused_local_variable

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
// import 'package:path_provider/path_provider.dart';

import '../../../constants.dart';
import 'all_files_page.dart';

class add_file extends StatefulWidget {
  const add_file({Key? key}) : super(key: key);

  @override
  State<add_file> createState() => _add_fileState();
}

class _add_fileState extends State<add_file> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 200,
          decoration:  BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(30),
                      ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () async{
                  final result = await FilePicker.platform.pickFiles(
                    allowMultiple: true,
                    // type: FileType.custom,
                    // allowedExtensions: ['pdf', 'mp4']
                    );
                  if(result == null) return;

                  openFiles(result.files);

                  // final file = result.files.first;
                  // openFile(file);

                  // print('Name: ${file.name}');
                  // print('Bytes: ${file.bytes}');
                  // print('Size: ${file.size}');
                  // print('Extension: ${file.extension}');
                  // print('Path: ${file.path}');

                  // final newFile = await saveFilePermanently(file);

                }, 
                icon: Center(
                  child: Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.black,),
                ),
              ),
              Text('Pick File', 
              style: TextStyle(
                fontSize: 20),)
            ],
          )
        ),
      ),
    );
  
  }
//   Future<File> saveFilePermanently(PlatformFile file) async{
//   final appStorage = await getApplicationDocumentsDirectory();
//   final newFile = File('${appStorage.path} / ${file.name}');

//   return File(file.path!).copy(newFile.path);
// }
void openFiles(List<PlatformFile> files)=>
Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Files_page(
  files: files,
  onOpenedFile: openFile,
))));
void openFile(PlatformFile file){
  OpenFile.open(file.path!);
}
}


