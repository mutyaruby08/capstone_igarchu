import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class Files_page extends StatefulWidget {
  final List<PlatformFile> files;
  final ValueChanged<PlatformFile> onOpenedFile;
  const Files_page({
    Key? key,
    required this.files,
    required this.onOpenedFile,}) : super(key: key);

  @override
  State<Files_page> createState() => _Files_pageState();
}

class _Files_pageState extends State<Files_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Files'),
        centerTitle: true,
      ),
      body: Center(
        child: GridView.builder(
          padding: EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8), 
          itemCount: widget.files.length,
          itemBuilder: (context, index){
            final file = widget.files[index];

            return buildFile(file);
          })
      ),
    );
  }
  Widget buildFile(PlatformFile file){
    final kb = file.size / 1024;
    final mb = kb / 1024;
    final fileSize = mb >=1 ? '${mb.toStringAsFixed(2)} MB' : '${kb.toStringAsFixed(2)} KB';
    final extension = file.extension ?? 'none';
    // final color = getColor(extension);

    return InkWell(
      onTap: () => widget.onOpenedFile(file),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text('.$extension',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                ) 
            ),
            SizedBox(height: 8,),
            Text(file.name,
            style: TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.w500),
              overflow: TextOverflow.ellipsis,),
            Text(
              fileSize,
              style: TextStyle(fontSize: 16),
            ),

          ],
        ),
      ),
    );
  }
}