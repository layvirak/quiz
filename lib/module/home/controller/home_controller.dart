import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectIndex = 1.obs;
  var selectSubIndex = 1.obs;
  var isShowMore = true.obs;
  var sliderList = <String>[
    'https://media.licdn.com/dms/image/C5112AQHT8xuyfvJpSQ/article-cover_image-shrink_720_1280/0/1571234118087?e=2147483647&v=beta&t=sAcRvwhVOPyrXDaayG_OR3NF6mM87xrr6C-RA230YCI',
    'https://images.prismic.io/createthrive/97c66635-ed56-4329-9e0e-b46f9bdf1639_Blog%20landscape.png?ixlib=gatsbyFP&auto=compress%2Cformat&fit=max&q=50&w=4492&h=1318',
    'https://media.dev.to/cdn-cgi/image/width=1000,height=420,fit=cover,gravity=auto,format=auto/https%3A%2F%2Fdev-to-uploads.s3.amazonaws.com%2Fi%2F6zttqdyzc2uyl27r0i9k.png',
  ];
  var isLoading = false.obs;
}
