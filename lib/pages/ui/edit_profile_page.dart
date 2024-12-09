part of '../pages.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buttonUpdate() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 15),
          padding: EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            'Update',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    Widget emailInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: primaryTextStyle,
              hintText: 'luthfiqolbi06@gmail.com',
              fillColor: backgroundColor4,
              filled: true,
              icon: Icon(
                Icons.email,
                color: Colors.white,
              ),
            ),
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
              color: Colors.white,
            ),
            keyboardType: TextInputType.text,
          ),
        ),
      );
    }

    Widget usernameInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: primaryTextStyle,
              hintText: 'luth.fiqolbi',
              fillColor: backgroundColor4,
              filled: true,
              icon: Icon(
                Icons.verified_user,
                color: Colors.white,
              ),
            ),
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
              color: Colors.white,
            ),
            keyboardType: TextInputType.text,
          ),
        ),
      );
    }

    Widget nameInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: primaryTextStyle,
              hintText: 'Luthfi Qolbi',
              fillColor: backgroundColor4,
              filled: true,
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
              color: Colors.white,
            ),
            keyboardType: TextInputType.text,
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 64,
                backgroundImage: AssetImage(
                  'assets/image_shoes.png',
                ),
              ),
            ),
            Text(
              'Luthfi Qolbi',
              style: primaryTextStyle,
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
            buttonUpdate(),
          ],
        ),
      );
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Edit Profile',
          style: primaryTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 20,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
