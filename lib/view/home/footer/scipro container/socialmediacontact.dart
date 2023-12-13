// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaContact extends StatelessWidget {
   SocialMediaContact({super.key});
   final Uri _faceBookUrl = Uri.parse('https://www.facebook.com/scipro.in');
  final Uri _twitterUrl = Uri.parse('https://twitter.com/SCIPRO_in');
  final Uri _utubeUrl =  Uri.parse('https://www.youtube.com/channel/UCDyXvapt2hsatw6RhRLhoOQ');
  final Uri _instaUrl =Uri.parse('https://www.instagram.com/scipro_in/');
     //
  final Uri _leptonUrl = Uri.parse('http://www.leptoncommunications.com');

  Future<void> _launchFacebookUrl() async {
    if (!await launchUrl(_faceBookUrl)) {
      throw 'Could not launch $_faceBookUrl';
    }
  }

  Future<void> _launchTwitterUrl() async {
    if (!await launchUrl(_twitterUrl)) {
      throw 'Could not launch $_twitterUrl';
    }
  }

  Future<void> _launchyouTubeUrl() async {
    if (!await launchUrl(_utubeUrl)) {
      throw 'Could not launch $_utubeUrl';
    }
  }

  Future<void> _launchInstaUrl() async {
    if (!await launchUrl(_instaUrl)) {
      throw 'Could not launch $_instaUrl';
    }
  }

  Future<void> _launchleptonUrl() async {
    if (!await launchUrl(_leptonUrl)) {
      throw 'Could not launch $_leptonUrl';
    }
  }

  final Uri _url =
      Uri.parse('https://storage.googleapis.com/scipro-bucket/app-release.apk');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return  Container(child:  Row(
              children: [
                GestureDetector(onTap: (){
                _launchFacebookUrl();
                                      
                                    
                },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: CircleAvatharWidget(
                      imagePath: "assets/images/frdd.png",
                    ),
                  ),
                ),
                GestureDetector(onTap: (){
                  _launchInstaUrl();
                },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: CircleAvatharWidget(
                      imagePath: "assets/images/instag.png",
                    ),
                  ),
                ),
                GestureDetector(onTap: (){
                  _launchTwitterUrl();
                },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: CircleAvatharWidget(
                      imagePath: "assets/images/twitt.png",
                    ),
                  ),
                ),
                GestureDetector(onTap: (){
                  _launchyouTubeUrl();
                },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: CircleAvatharWidget(
                      imagePath: "assets/images/utube.png",
                    ),
                  ),
                ),
              ],
            ),);
  }
}

class CircleAvatharWidget extends StatelessWidget {
  String imagePath;

  CircleAvatharWidget({
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: const Color(0xFF1493d2),
      child: Image.asset(
        imagePath,
        height: 20,
        width: 20,
      ),
    );
  }
}