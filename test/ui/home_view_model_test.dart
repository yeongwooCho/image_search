import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/model/photo.dart';
import 'package:image_search/ui/home_view_model.dart';

void main() {
  test('Sream이 잘 동작해야 한다.', () async {
    final viewModel = HomeViewModel(FakePhotoApiRepository());

    await viewModel.fetch('apple');
    await viewModel.fetch('iphone');

    final result = fakeJson.map((e) => Photo.fromJson(e)).toList();

    expect(
      viewModel.photoStream,
      emitsInOrder([
        equals([]),
        equals(result),
        equals(result),
      ]),
    );
  });
}

class FakePhotoApiRepository implements PhotoApiRepository {
  @override
  Future<List<Photo>> fetch(String query) async {
    await Future.delayed(const Duration(milliseconds: 500));

    return fakeJson.map((e) => Photo.fromJson(e)).toList();
  }
}

List<Map<String, dynamic>> fakeJson = [
  {
    "id": 2788599,
    "pageURL":
        "https://pixabay.com/photos/apples-red-apple-ripe-apple-orchard-2788599/",
    "type": "photo",
    "tags": "apples, red apple, ripe",
    "previewURL":
        "https://cdn.pixabay.com/photo/2017/09/26/13/21/apples-2788599_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g70786365db4611ca8590001f8c867f8b0764ceaa303e648db2de4ed289621cf25c174e7022131217b0e1bc561cbff9db1fa8b13dc22b896b054cf3f931058d81_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g6cdf8c39ae3aaa5dba7eeca1810bd4c49d511e711102de727131dab389194bb28c9e8feab307c548af49775cb2cc03196aa5c788b974801a31198d3ec69d4c97_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 4000,
    "imageSize": 3660484,
    "views": 166805,
    "downloads": 94764,
    "collections": 593,
    "likes": 659,
    "comments": 78,
    "user_id": 2364555,
    "user": "NoName_13",
    "userImageURL":
        "https://cdn.pixabay.com/user/2022/12/12/07-40-59-226_250x250.jpg"
  },
  {
    "id": 256261,
    "pageURL":
        "https://pixabay.com/photos/apple-books-still-life-fruit-food-256261/",
    "type": "photo",
    "tags": "apple, books, still life",
    "previewURL":
        "https://cdn.pixabay.com/photo/2014/02/01/17/28/apple-256261_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g76684f02fa04bad076e7051c1e31d02f6a4d5564f3ce58f8571169672a8750edc2499138fc26f522ff46f68c9be44885_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 423,
    "largeImageURL":
        "https://pixabay.com/get/gb3025959089ab95362634083b637bcff263c30e56579e66e35484fe33a17dc35e396fff8331b4a00b8002ff307bafdfa29ca349a088f2ca9520eec56b4ff7c58_1280.jpg",
    "imageWidth": 4928,
    "imageHeight": 3264,
    "imageSize": 2987083,
    "views": 601184,
    "downloads": 337140,
    "collections": 1027,
    "likes": 1055,
    "comments": 256,
    "user_id": 143740,
    "user": "jarmoluk",
    "userImageURL":
        "https://cdn.pixabay.com/user/2019/09/18/07-14-26-24_250x250.jpg"
  },
  {
    "id": 2788651,
    "pageURL":
        "https://pixabay.com/photos/apples-apple-tree-fruits-orchard-2788651/",
    "type": "photo",
    "tags": "apples, apple tree, fruits",
    "previewURL":
        "https://cdn.pixabay.com/photo/2017/09/26/13/39/apples-2788651_150.jpg",
    "previewWidth": 150,
    "previewHeight": 77,
    "webformatURL":
        "https://pixabay.com/get/ged4f4836a4458910b8cdda701747255556bdabcc1a2c60e2af1f9da7d02156958b7131345548ce3faeaab84b0be9daa24e13b6ce1845773b46bfcad7a3728001_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 330,
    "largeImageURL":
        "https://pixabay.com/get/g13f7c3cf73bd8a95661541a7fa3748b05a93842a92af877610f368f495305dc863a3cad0bd0383ea30fe59c0bbcfeecc4b589aafd137ad272e2dcb1cd56d956e_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 3103,
    "imageSize": 2518838,
    "views": 94933,
    "downloads": 62307,
    "collections": 496,
    "likes": 481,
    "comments": 54,
    "user_id": 2364555,
    "user": "NoName_13",
    "userImageURL":
        "https://cdn.pixabay.com/user/2022/12/12/07-40-59-226_250x250.jpg"
  },
  {
    "id": 8027938,
    "pageURL":
        "https://pixabay.com/photos/apple-fruit-red-apple-sliced-apple-8027938/",
    "type": "photo",
    "tags": "apple, fruit, red apple",
    "previewURL":
        "https://cdn.pixabay.com/photo/2023/05/30/08/34/apple-8027938_150.jpg",
    "previewWidth": 150,
    "previewHeight": 100,
    "webformatURL":
        "https://pixabay.com/get/g8e18d97f0fea53d0b24b0cbc4c991144e670bfd8d659f3258ff5a5dacb81d0b1836fca41758d7cfae38c4869e759f39c42f38d9b1105dba4c0546112c012a46e_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 427,
    "largeImageURL":
        "https://pixabay.com/get/g78d64f4ac412cecf59f302f28d95617848d9261a832f7848eae5d697bdfc92ccf36690b8f9b993543b0ac4f25576a337e9d1d40e196068e0f25aa399764ce0e1_1280.jpg",
    "imageWidth": 5636,
    "imageHeight": 3757,
    "imageSize": 1044320,
    "views": 8356,
    "downloads": 6179,
    "collections": 46,
    "likes": 83,
    "comments": 12,
    "user_id": 4052317,
    "user": "MaxWdhs",
    "userImageURL":
        "https://cdn.pixabay.com/user/2023/05/22/10-14-24-37_250x250.png"
  },
  {
    "id": 256268,
    "pageURL":
        "https://pixabay.com/photos/apple-red-delicious-fruit-vitamins-256268/",
    "type": "photo",
    "tags": "apple, red, delicious",
    "previewURL":
        "https://cdn.pixabay.com/photo/2014/02/01/17/30/apple-256268_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/gc431d77b0663ab85cb95cfa91e9294f2aba72045d718969a424986df192a6a268a17b7ccc9f6c492968023d718664edc_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 423,
    "largeImageURL":
        "https://pixabay.com/get/g647d3cd41ff64ffece137dfaac1e95f2dfa919335f1aa990c56607c7fbb4b1f79454aa5552ded374ffad5abbc619801b3fbc3ed8a76dba7f6cb1e730ac107d1c_1280.jpg",
    "imageWidth": 4928,
    "imageHeight": 3264,
    "imageSize": 2942037,
    "views": 103130,
    "downloads": 55596,
    "collections": 324,
    "likes": 279,
    "comments": 43,
    "user_id": 143740,
    "user": "jarmoluk",
    "userImageURL":
        "https://cdn.pixabay.com/user/2019/09/18/07-14-26-24_250x250.jpg"
  },
  {
    "id": 256263,
    "pageURL":
        "https://pixabay.com/photos/apple-books-classroom-red-apple-256263/",
    "type": "photo",
    "tags": "apple, books, classroom",
    "previewURL":
        "https://cdn.pixabay.com/photo/2014/02/01/17/28/apple-256263_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/gdfbd74d380fb8852e55c2fe309650689b36abc0bcfd4ea1888a825011244206275a770a86de69985a7dddcea446d0b76_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 423,
    "largeImageURL":
        "https://pixabay.com/get/gc57897a188834ceb85e2a544cf9965c433cbd0a15818164fb0ecadb150c983a587bba11ca1611cf614afa342a041bfcfc7b8626bca94df9bd7e7fb1f12b441d2_1280.jpg",
    "imageWidth": 4928,
    "imageHeight": 3264,
    "imageSize": 2864273,
    "views": 283745,
    "downloads": 163873,
    "collections": 627,
    "likes": 566,
    "comments": 109,
    "user_id": 143740,
    "user": "jarmoluk",
    "userImageURL":
        "https://cdn.pixabay.com/user/2019/09/18/07-14-26-24_250x250.jpg"
  },
  {
    "id": 1702316,
    "pageURL": "https://pixabay.com/photos/apple-red-fruit-red-chief-1702316/",
    "type": "photo",
    "tags": "apple, red, fruit",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/09/29/08/33/apple-1702316_150.jpg",
    "previewWidth": 150,
    "previewHeight": 116,
    "webformatURL":
        "https://pixabay.com/get/ge9430429856d0f41c5aaf17a3b0e0daf854cb08eca7bf4f8afebcea47110df987e8ae5de12431a574e396ca0790d7ee45ef0299fe4d3accddfd73cb8861bb447_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 495,
    "largeImageURL":
        "https://pixabay.com/get/ge8653f304811c00882d62978f6c17145e711c61290650acce03b1c1568fbad5c981d91b607edabd2e91e429f69a4761dd12639a427a7728c700554afcb099feb_1280.jpg",
    "imageWidth": 4000,
    "imageHeight": 3099,
    "imageSize": 1930833,
    "views": 173242,
    "downloads": 116493,
    "collections": 373,
    "likes": 383,
    "comments": 33,
    "user_id": 2364555,
    "user": "NoName_13",
    "userImageURL":
        "https://cdn.pixabay.com/user/2022/12/12/07-40-59-226_250x250.jpg"
  },
  {
    "id": 7458975,
    "pageURL":
        "https://pixabay.com/photos/harvest-fruit-apple-ripe-red-7458975/",
    "type": "photo",
    "tags": "harvest, fruit, apple",
    "previewURL":
        "https://cdn.pixabay.com/photo/2022/09/16/16/09/harvest-7458975_150.jpg",
    "previewWidth": 150,
    "previewHeight": 100,
    "webformatURL":
        "https://pixabay.com/get/g3ac43c9c97f0ac2fc11e65874bd5accc185fcba0bdb800ee310e4614e2ad377c9b840b071d334cbc2cf1fb2fd62b8d5b56daa1613eeb05c424f7c562f2590ea5_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 427,
    "largeImageURL":
        "https://pixabay.com/get/g913105ab13aa04c3543958d74c182d6ef75fda11bca09b03e317fcf70478e3f5c9750bde6edcd29a9d3af1d1deaf1d19a9e8a901b851b502bb3e840fa921de0a_1280.jpg",
    "imageWidth": 6118,
    "imageHeight": 4079,
    "imageSize": 3207237,
    "views": 23016,
    "downloads": 17196,
    "collections": 79,
    "likes": 105,
    "comments": 16,
    "user_id": 25753869,
    "user": "alandsmann",
    "userImageURL":
        "https://cdn.pixabay.com/user/2022/02/17/14-57-12-27_250x250.jpg"
  },
  {
    "id": 1122537,
    "pageURL":
        "https://pixabay.com/photos/apple-water-droplets-fruit-moist-1122537/",
    "type": "photo",
    "tags": "apple, water droplets, fruit",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/01/05/13/58/apple-1122537_150.jpg",
    "previewWidth": 150,
    "previewHeight": 95,
    "webformatURL":
        "https://pixabay.com/get/gc5d4e005ec4250be0a025850bf70c60bcfc760ad1018d75f8e6ab115288e65c240da71d8af993df8f7fe2febb9e6700cce07d7342cb5f6fe434db64e41e738d7_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 409,
    "largeImageURL":
        "https://pixabay.com/get/g22dc8f3ccdf8ab909001c0cbbfa60dc3b90602651a681b90cbcaa2fa2423d21c9f6e3a2e595b0e1d2891ed9db94649b4ba3eedb9188b1e823189dd2eb804ee85_1280.jpg",
    "imageWidth": 4752,
    "imageHeight": 3044,
    "imageSize": 5213632,
    "views": 395942,
    "downloads": 240591,
    "collections": 1158,
    "likes": 1271,
    "comments": 200,
    "user_id": 1445608,
    "user": "mploscar",
    "userImageURL":
        "https://cdn.pixabay.com/user/2016/01/05/14-08-20-943_250x250.jpg"
  },
  {
    "id": 8306677,
    "pageURL":
        "https://pixabay.com/photos/apples-apple-tree-ripe-apples-8306677/",
    "type": "photo",
    "tags": "apples, apple tree, ripe apples",
    "previewURL":
        "https://cdn.pixabay.com/photo/2023/10/10/14/55/apples-8306677_150.jpg",
    "previewWidth": 150,
    "previewHeight": 100,
    "webformatURL":
        "https://pixabay.com/get/gd8e6ce2d7e97e71dbc32153f300c493a3d0e739e101a20eda580e9a3b83286e922108e30da6102eb84d2080b4a9f195a07bd26e88edb3cc5b5a2a8a1c04db59d_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 427,
    "largeImageURL":
        "https://pixabay.com/get/g330d88b43bf8ff0db4f0868c08c5df6bc5c2220923c5bf128265f362809b09e41328f9fa5eb477a0b2f7fd83ae7cf396627029111272f1ecb1d46f328ee4a2ca_1280.jpg",
    "imageWidth": 5168,
    "imageHeight": 3448,
    "imageSize": 2588231,
    "views": 11212,
    "downloads": 9393,
    "collections": 46,
    "likes": 90,
    "comments": 25,
    "user_id": 8658480,
    "user": "jhenning",
    "userImageURL":
        "https://cdn.pixabay.com/user/2023/07/17/15-28-11-147_250x250.jpg"
  },
  {
    "id": 2391,
    "pageURL": "https://pixabay.com/photos/apple-diet-female-food-fresh-2391/",
    "type": "photo",
    "tags": "apple, diet, female",
    "previewURL":
        "https://cdn.pixabay.com/photo/2010/12/13/10/09/apple-2391_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/gf07b542c996e64d081a0fa5462d5ac55ff30b10e9efc919079964288b7370f01d16d5b051d88cb49eb3d67387e28f527_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g5acf504c443044b9c854148ba5c6d882b7cce7055b9dcf41d1b118f754a5987cfe9e55bbc80c74c521231c1359f6fc1e_1280.jpg",
    "imageWidth": 4752,
    "imageHeight": 3168,
    "imageSize": 752002,
    "views": 159528,
    "downloads": 108314,
    "collections": 396,
    "likes": 313,
    "comments": 41,
    "user_id": 14,
    "user": "PublicDomainPictures",
    "userImageURL":
        "https://cdn.pixabay.com/user/2012/03/08/00-13-48-597_250x250.jpg"
  },
  {
    "id": 8027944,
    "pageURL":
        "https://pixabay.com/photos/apple-fruits-tomato-red-apple-8027944/",
    "type": "photo",
    "tags": "apple, fruits, tomato",
    "previewURL":
        "https://cdn.pixabay.com/photo/2023/05/30/08/34/apple-8027944_150.jpg",
    "previewWidth": 150,
    "previewHeight": 100,
    "webformatURL":
        "https://pixabay.com/get/g3fa118b8622219a113b3272758c94cf6d845e71348677321c5648fec9ad795e64e728bfbc68b9d4116e17dd21945a45edc296485e43db8dd977d0e45663e4f6d_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 427,
    "largeImageURL":
        "https://pixabay.com/get/gc3ffbe4e892ff9f3828f7617a4a907bf653e47989993c2a1e0039d4cec849858a7d3c20b18b50d2e0e64bf08071befc3ab895a94fa6432bb31c30e6037ac96d1_1280.jpg",
    "imageWidth": 5636,
    "imageHeight": 3757,
    "imageSize": 795101,
    "views": 13330,
    "downloads": 10860,
    "collections": 22,
    "likes": 75,
    "comments": 9,
    "user_id": 4052317,
    "user": "MaxWdhs",
    "userImageURL":
        "https://cdn.pixabay.com/user/2023/05/22/10-14-24-37_250x250.png"
  },
  {
    "id": 1834639,
    "pageURL":
        "https://pixabay.com/photos/apple-red-fruit-food-fresh-ripe-1834639/",
    "type": "photo",
    "tags": "apple, red, fruit",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/11/18/13/47/apple-1834639_150.jpg",
    "previewWidth": 150,
    "previewHeight": 150,
    "webformatURL":
        "https://pixabay.com/get/ga9d733d77b60ce7160cf8d616521acaf9f3802bd52ac7d2582d86b91c6af3eabf66f269b1733bbaf42bcd2e503274e19ff299815960c83c5cd9c6b51d2f070ef_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 640,
    "largeImageURL":
        "https://pixabay.com/get/gea93ffe79f4c61864224e09f11359fcae93c9dde28936c4011e46c0c1de7448ce9f7f2a7ff3dbafa255e4a423e9aa3e789c48b4533b71351b386989c44d2a077_1280.jpg",
    "imageWidth": 2827,
    "imageHeight": 2827,
    "imageSize": 1022194,
    "views": 156985,
    "downloads": 101496,
    "collections": 325,
    "likes": 275,
    "comments": 66,
    "user_id": 2286921,
    "user": "Pexels",
    "userImageURL":
        "https://cdn.pixabay.com/user/2016/03/26/22-06-36-459_250x250.jpg"
  },
  {
    "id": 5523590,
    "pageURL":
        "https://pixabay.com/photos/apple-fresh-tree-apple-orchard-5523590/",
    "type": "photo",
    "tags": "apple, fresh, tree",
    "previewURL":
        "https://cdn.pixabay.com/photo/2020/08/28/05/36/apple-5523590_150.jpg",
    "previewWidth": 150,
    "previewHeight": 100,
    "webformatURL":
        "https://pixabay.com/get/g1dece86ee1d2f29cec8af72b7bedcce7b981d4f3f8c47e52149b83bf7476b7af08932fbdab947537d51856ebe187a6dc3ef662f72cc1829606686ef2daa57873_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 427,
    "largeImageURL":
        "https://pixabay.com/get/g3defb1bd8fd8e84967de2935dfe8dcc443e8a5644912b916fe67efeec7f15702d784c73f40e700bab56ff93c1d670c0e28930dbeb4fed44b016d4ae9ae73306b_1280.jpg",
    "imageWidth": 6016,
    "imageHeight": 4016,
    "imageSize": 5173833,
    "views": 31729,
    "downloads": 25486,
    "collections": 105,
    "likes": 98,
    "comments": 16,
    "user_id": 14916592,
    "user": "keyouest",
    "userImageURL": ""
  },
  {
    "id": 3524113,
    "pageURL":
        "https://pixabay.com/photos/apple-fruits-food-leaves-organic-3524113/",
    "type": "photo",
    "tags": "apple, fruits, food",
    "previewURL":
        "https://cdn.pixabay.com/photo/2018/07/08/15/31/apple-3524113_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g1197563d96cbbd1d90e2206d6dce40f96f405cee636143256cffb67edec17144354d86d2e1ab75f6bb60db678e861117a5dc7e0095bb402bc7502e613f9952b5_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/ga1a2ec5e6a33eacaeda33574905264d53faab04161dfcaa7de3d18f0bc0e6ed1f7f2d809a6c6afacaecb6d0dafad5e062d2764c0c424ad08e80c44a8bd92c321_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 4000,
    "imageSize": 3673812,
    "views": 39997,
    "downloads": 33405,
    "collections": 61,
    "likes": 105,
    "comments": 46,
    "user_id": 1767157,
    "user": "Ralphs_Fotos",
    "userImageURL":
        "https://cdn.pixabay.com/user/2024/05/26/04-18-55-608_250x250.jpg"
  },
  {
    "id": 1532055,
    "pageURL":
        "https://pixabay.com/photos/apple-green-apple-tree-apple-tree-1532055/",
    "type": "photo",
    "tags": "apple, green apple, tree",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/07/21/09/04/apple-1532055_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/gb50844cca948dfa70ecb356245f6bc57e50c1c6a125b3e484ee60812e798a361c9eeb0390986eeb86a0a4a9bf4df40a5adfcbd76560a3d73afd6cf9987c974dc_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 423,
    "largeImageURL":
        "https://pixabay.com/get/g7972eba736b150893a0daf23fc9166b847c82e663298bc35235d421e3418c8077ee0e55a1061b104800d82d632f9c396f472039736fca10ea5b1e81211dde1da_1280.jpg",
    "imageWidth": 4928,
    "imageHeight": 3264,
    "imageSize": 2842757,
    "views": 117865,
    "downloads": 69072,
    "collections": 272,
    "likes": 311,
    "comments": 58,
    "user_id": 509903,
    "user": "congerdesign",
    "userImageURL":
        "https://cdn.pixabay.com/user/2023/11/06/12-07-49-892_250x250.jpg"
  },
  {
    "id": 256262,
    "pageURL":
        "https://pixabay.com/photos/apple-book-still-life-red-apple-256262/",
    "type": "photo",
    "tags": "apple, book, still life",
    "previewURL":
        "https://cdn.pixabay.com/photo/2014/02/01/17/28/apple-256262_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/ge666e3096ca74393c03be11c3d8cfaed070b9cee3fe8292ecbbdcb62d7723d127d01d7fff82e668fab122e10b9e68e30_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 423,
    "largeImageURL":
        "https://pixabay.com/get/g9dc751cf649d4c74b1abbf0575837071cd5401e7b36da7cbe39def2705b082db9dcb8c0a4dd8e0dc6f05756eaa96da7240d9a772beae6dff52937cc9242d18b4_1280.jpg",
    "imageWidth": 4500,
    "imageHeight": 2981,
    "imageSize": 2303151,
    "views": 107479,
    "downloads": 54888,
    "collections": 255,
    "likes": 233,
    "comments": 30,
    "user_id": 143740,
    "user": "jarmoluk",
    "userImageURL":
        "https://cdn.pixabay.com/user/2019/09/18/07-14-26-24_250x250.jpg"
  },
  {
    "id": 3506215,
    "pageURL":
        "https://pixabay.com/photos/apple-fruit-food-fresh-healthy-3506215/",
    "type": "photo",
    "tags": "apple, fruit, food",
    "previewURL":
        "https://cdn.pixabay.com/photo/2018/06/29/15/31/apple-3506215_150.jpg",
    "previewWidth": 150,
    "previewHeight": 101,
    "webformatURL":
        "https://pixabay.com/get/g89ab069f16a3635f62975c8e956fb1352254914336e5c6bb113e17d4cf09393b3fe5a661d2e96d1c5ca006f6a572a1dd135408dc2c9cd5bfe0db476d56839fe6_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 435,
    "largeImageURL":
        "https://pixabay.com/get/g7c8f2195c97740e49040eefab5d7e3f6b114f25df8a9510a6fb4c7f952c37f31869baf1fa01d9b0f873fc84e19d39c025748c6787e9c897fa49387cc3c053367_1280.jpg",
    "imageWidth": 5035,
    "imageHeight": 3427,
    "imageSize": 2028733,
    "views": 21059,
    "downloads": 16235,
    "collections": 56,
    "likes": 86,
    "comments": 44,
    "user_id": 1767157,
    "user": "Ralphs_Fotos",
    "userImageURL":
        "https://cdn.pixabay.com/user/2024/05/26/04-18-55-608_250x250.jpg"
  },
  {
    "id": 3535566,
    "pageURL":
        "https://pixabay.com/photos/apples-fruits-apple-tree-harvest-3535566/",
    "type": "photo",
    "tags": "apples, fruits, apple tree",
    "previewURL":
        "https://cdn.pixabay.com/photo/2018/07/13/11/29/apples-3535566_150.jpg",
    "previewWidth": 150,
    "previewHeight": 91,
    "webformatURL":
        "https://pixabay.com/get/gc74f8206ab58f24096b4377dfbc10f44367d1bd22a95e789b9e2319d1a4151ab685b58878269f672076e6b6b36a0664e9eae2eab74d51dfca525a1a72e8a0466_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 392,
    "largeImageURL":
        "https://pixabay.com/get/g57c4741c219add5f5b3ffc8b27bad0a8716bea5223423c4a0d4a9a4c0040f89584c65ab9ecc7c12adf59e5cd21f8b7c1ca5bf3ee2212d05254b9cd2e72d69546_1280.jpg",
    "imageWidth": 5503,
    "imageHeight": 3371,
    "imageSize": 3244303,
    "views": 73288,
    "downloads": 51015,
    "collections": 124,
    "likes": 216,
    "comments": 57,
    "user_id": 1767157,
    "user": "Ralphs_Fotos",
    "userImageURL":
        "https://cdn.pixabay.com/user/2024/05/26/04-18-55-608_250x250.jpg"
  },
  {
    "id": 2788616,
    "pageURL": "https://pixabay.com/photos/apple-red-red-apple-2788616/",
    "type": "photo",
    "tags": "apple, red, red apple",
    "previewURL":
        "https://cdn.pixabay.com/photo/2017/09/26/13/31/apple-2788616_150.jpg",
    "previewWidth": 150,
    "previewHeight": 90,
    "webformatURL":
        "https://pixabay.com/get/g2ab834734d4ddd0cba4bb6568d1785b06e86e5fd71abbf697a0b0114741cfb4f040b50152b6a7013eb798138b31612bc2c7f12538c66194ca6f06dbd463cffe6_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 384,
    "largeImageURL":
        "https://pixabay.com/get/ga4554775e0cdbcf732a546558e24d3031eb758632bb5f2ed2d140fc4d24f139a32ed918e465536bfad8f152b9dfbc3bca77ceeeda9fa3b9e1044c5af28622078_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 3601,
    "imageSize": 2758033,
    "views": 154174,
    "downloads": 95170,
    "collections": 446,
    "likes": 519,
    "comments": 42,
    "user_id": 2364555,
    "user": "NoName_13",
    "userImageURL":
        "https://cdn.pixabay.com/user/2022/12/12/07-40-59-226_250x250.jpg"
  }
];
