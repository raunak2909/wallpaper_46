import 'package:wellceno_ui/modal/photos/photos_modal.dart';

class DataModal {
  String? next_page;
  int? page;
  int? per_page;
  List<Photo_Modal>? photos;

  int? total_results;

  DataModal(
      { this.next_page,
       this.page,
       this.per_page,
       this.photos,
       this.total_results});

  factory DataModal.fromjson(Map<String, dynamic> json) {
    List<Photo_Modal> mPhoto = [];

    for (Map<String, dynamic> eachphoto in json['photos']) {
      mPhoto.add(Photo_Modal.fromjson(eachphoto));
    }
    return DataModal(
        next_page: json['next_page'],
        page: json['page'],
        per_page: json['per_page'],
        photos: mPhoto,
        total_results: json['total_results']);
  }
}
