// File _image;
//
// Future getImage(bool isCamera) async {
//   File image;
//   if (isCamera) {
//     image = await ImagePicker.pickImage(source: ImageSource.camera);
//   } else {
//     image = await ImagePicker.pickImage(source: ImageSource.gallery);
//   }
//   setState(() {
//     _image = image;
//   });
// }


// IconButton(
// icon: Icon(Icons.attach_file),
// onPressed: () {
// getImage(false);
// }),
// IconButton(
// icon: Icon(Icons.camera_alt_outlined),
// onPressed: () {
// getImage(true);
// },
// ),