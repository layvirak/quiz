import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

import '../../../../constrants/app_color.dart';
import '../../module/profile/screen/view_profile_screen.dart';

Future<void> customImagePicker(BuildContext context, String? image,
    {bool isChooseLibrary = true, Function? onChange}) async {
  Platform.isIOS
      ? await showCupertinoModalPopup(
          context: context,
          builder: (_) {
            return Builder(
              builder: (context) {
                return CupertinoActionSheet(
                  actions: [
                    if (image != null && image != '')
                      Container(
                        color: Theme.of(context).cardColor,
                        child: CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ViewProfileScreen(
                                    singleImage: image,
                                  );
                                },
                              ),
                            );
                          },
                          child: const Text("View Photo"),
                        ),
                      ),
                    Container(
                      color: Theme.of(context).cardColor,
                      child: CupertinoActionSheetAction(
                        onPressed: () async {
                          Navigator.pop(context);
                          await ImagePicker()
                              .pickImage(
                            source: ImageSource.camera,
                            imageQuality: 90,
                          )
                              .then((pickedFile) async {
                            if (pickedFile != null) {
                              var basenames =
                                  basenameWithoutExtension(pickedFile.path);
                              var pathString = pickedFile.path
                                  .split(basename(pickedFile.path))[0];

                              var pathStringWithExtension =
                                  "$pathString${basenames}_image.jpg";

                              await FlutterImageCompress.compressAndGetFile(
                                pickedFile.path,
                                pathStringWithExtension,
                                rotate: 0,
                                quality: 100,
                                keepExif: false,
                                autoCorrectionAngle: true,
                                format: CompressFormat.jpeg,
                              ).then((value) {
                                onChange!(File(value!.path));

                                Navigator.pop(context);
                              });
                            }
                          });
                        },
                        child: const Text("Take Photo"),
                      ),
                    ),
                    if (isChooseLibrary)
                      Container(
                        color: Theme.of(context).cardColor,
                        child: CupertinoActionSheetAction(
                          onPressed: () async {
                            Navigator.pop(context);
                            await ImagePicker()
                                .pickImage(
                              source: ImageSource.gallery,
                              imageQuality: 90,
                            )
                                .then((pickedFile) async {
                              if (pickedFile != null) {
                                await decodeImageFromList(
                                        File(pickedFile.path).readAsBytesSync())
                                    .then((value) async {
                                  if (value.height > value.width) {
                                    var basenames = basenameWithoutExtension(
                                        pickedFile.path);
                                    var pathString = pickedFile.path
                                        .split(basename(pickedFile.path))[0];

                                    var pathStringWithExtension =
                                        "$pathString${basenames}_image.jpg";

                                    await FlutterImageCompress
                                        .compressAndGetFile(
                                      pickedFile.path,
                                      pathStringWithExtension,
                                      rotate: 0,
                                      quality: 100,
                                      keepExif: false,
                                      autoCorrectionAngle: true,
                                      format: CompressFormat.jpeg,
                                    ).then((value) {
                                      onChange!(File(value!.path));

                                      Navigator.pop(context);
                                    });
                                  } else {
                                    onChange!(File(pickedFile.path));
                                  }
                                });
                              }
                            });
                          },
                          child: const Text("Choose From Library"),
                        ),
                      ),
                  ],
                  cancelButton: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel"),
                    ),
                  ),
                );
              },
            );
          },
        )
      : await showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (_) {
            return Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (image != null && image != '')
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ViewProfileScreen(
                            singleImage: image,
                          );
                        }));
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        color: Colors.transparent,
                        child: Text("View Photo",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: AppColor.primaryColor)),
                      ),
                    ),
                  InkWell(
                    onTap: () async {
                      Navigator.pop(context);
                      await ImagePicker()
                          .pickImage(
                        source: ImageSource.camera,
                        imageQuality: 90,
                      )
                          .then((pickedFile) async {
                        if (pickedFile != null) {
                          var basenames =
                              basenameWithoutExtension(pickedFile.path);
                          var pathString = pickedFile.path
                              .split(basename(pickedFile.path))[0];

                          var pathStringWithExtension =
                              "$pathString${basenames}_image.jpg";

                          await FlutterImageCompress.compressAndGetFile(
                            pickedFile.path,
                            pathStringWithExtension,
                            rotate: 0,
                            quality: 100,
                            keepExif: false,
                            autoCorrectionAngle: true,
                            format: CompressFormat.jpeg,
                          ).then((value) {
                            onChange!(File(value!.path));

                            Navigator.pop(context);
                          });
                        }
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      color: Colors.transparent,
                      child: Text("Take Photo",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: AppColor.primaryColor)),
                    ),
                  ),
                  if (isChooseLibrary)
                    InkWell(
                      onTap: () async {
                        Navigator.pop(context);
                        await ImagePicker()
                            .pickImage(
                          source: ImageSource.gallery,
                          imageQuality: 90,
                        )
                            .then((pickedFile) async {
                          if (pickedFile != null) {
                            await decodeImageFromList(
                                    File(pickedFile.path).readAsBytesSync())
                                .then((value) async {
                              if (value.height > value.width) {
                                var basenames =
                                    basenameWithoutExtension(pickedFile.path);
                                var pathString = pickedFile.path
                                    .split(basename(pickedFile.path))[0];

                                var pathStringWithExtension =
                                    "$pathString${basenames}_image.jpg";

                                await FlutterImageCompress.compressAndGetFile(
                                  pickedFile.path,
                                  pathStringWithExtension,
                                  rotate: 0,
                                  quality: 100,
                                  keepExif: false,
                                  autoCorrectionAngle: true,
                                  format: CompressFormat.jpeg,
                                ).then((value) {
                                  onChange!(File(value!.path));

                                  Navigator.pop(context);
                                });
                              } else {
                                onChange!(File(pickedFile.path));

                                Navigator.pop(context);
                              }
                            });
                          }
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        color: Colors.transparent,
                        child: Text("Choose From Library",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: AppColor.primaryColor)),
                      ),
                    ),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      color: Colors.transparent,
                      child: Text("Cancel",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: AppColor.primaryColor,
                                  fontWeight: FontWeight.w600)),
                    ),
                  ),
                ],
              ),
            );
          },
        );
}
