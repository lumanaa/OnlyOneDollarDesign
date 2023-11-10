import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SharePopupMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(
        Icons.share,
        color: Colors.purple[200],
      ),
      offset: Offset(0, 40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<String>>[
          PopupMenuItem<String>(
            value: 'Facebook',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularLogoButton(
                  icon: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/6/6c/Facebook_Logo_2023.png',
                    height: 30,
                  ),
                  onPressed: () => _shareToFacebook(),
                ),
                
              ],
            ),
          ),
          PopupMenuItem<String>(
            value: 'Twitter',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularLogoButton(
                  icon: Image.network(
                    'https://imgs.search.brave.com/d6VHN8FUJfsqwpyKpVtALMWRMqPWbDcHtmh_uMLz-Qk/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/ZWRpZ2l0YWxhZ2Vu/Y3kuY29tLmF1L3dw/LWNvbnRlbnQvdXBs/b2Fkcy9uZXctVHdp/dHRlci1sb2dvLXgt/YmxhY2stcG5nLTkw/MHg5MjAucG5n',
                  ),
                  onPressed: () => _shareToInstagram(),
                ),
              ],
            ),
          ),
          PopupMenuItem<String>(
            value: 'Pinterest',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularLogoButton(
                  icon: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/0/08/Pinterest-logo.png',
                  ),
                  onPressed: () => _shareToPinterest(),
                ),
              ],
            ),
          ),
          PopupMenuItem(
            value: 'LinkedIn',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularLogoButton(
                  icon: Image.network(
                    'https://static-00.iconduck.com/assets.00/linkedin-icon-2048x2048-ya5g47j2.png',
                  ),
                  onPressed: () => _shareToGmail(),
                ),
              ],
            ),
          ),
        ];
      },
      onSelected: (String selectedValue) {
        // Handle the selected item if needed
      },
    );
  }

  void _shareToGmail() async {
    final email = 'recipient@example.com';
    final subject = 'Check out this app';
    final body = 'Your message here';

    final url = 'mailto:$email?subject=$subject&body=$body';

    await launch(url);
  }

  void _shareToFacebook() async {
    final url = 'https://www.facebook.com/';
    await launch(url);
  }

  void _shareToInstagram() async {
    final url = 'https://www.instagram.com/';
    await launch(url);
  }

  void _shareToPinterest() async {
    final url = 'https://www.pinterest.com/';
    await launch(url);
  }
}

class CircularLogoButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;

  CircularLogoButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 24, 
        height: 24, 
        child: icon,
      ),
    );
  }
}




