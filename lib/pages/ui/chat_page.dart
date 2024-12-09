part of '../pages.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget messageEmpty() {
      return Center(
        child: Expanded(
          child: Text(
            'Message Empty',
            style: primaryTextStyle,
          ),
        ),
      );
    }

    Widget message() {
      return Column(
        children: [
          ChatCard(),
          ChatCard(),
          ChatCard(),
          ChatCard(),
          ChatCard(),
          ChatCard(),
          ChatCard(),
          ChatCard(),
          ChatCard(),
          ChatCard(),
          ChatCard(),
        ],
      );
    }

    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor2,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(
            fontWeight: FontWeight.w200,
          ),
        ),
        automaticallyImplyLeading: false,
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          header(),
          message(),
        ],
      ),
    );
  }
}
