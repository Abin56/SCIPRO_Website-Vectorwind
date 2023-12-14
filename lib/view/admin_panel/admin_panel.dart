import 'package:flutter/material.dart';
import 'package:scipro_website/view/admin_panel/all_users_mngt/all_users/all_users_list.dart';
import 'package:scipro_website/view/admin_panel/coupen_mngt/coupen_part_grid/listing_coupen_users.dart';
import 'package:scipro_website/view/admin_panel/drawer_logo.dart';
import 'package:scipro_website/view/admin_panel/studyMaterials_management/studyMaterials_screen.dart';
import 'package:scipro_website/view/admin_panel/study_materials/studymaterials_page.dart';
import 'package:scipro_website/view/admin_panel/subscrib_std_mngt/Subscribed_std/subscribed_student.dart';
import 'package:scipro_website/view/admin_panel/video_management/video_management.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:sidebar_drawer/sidebar_drawer.dart';

class AdminPanelPage extends StatefulWidget {
  const AdminPanelPage({super.key});

  @override
  State<AdminPanelPage> createState() => _AdminPanelPageState();
}

class _AdminPanelPageState extends State<AdminPanelPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SidebarDrawer(
        body: ListView(
          children: [
            AppBar(
              backgroundColor: themeColorBlue,
              leading: const DrawerIcon(),
            ),
            pages[selectedIndex]
          ],
        ),
        drawer: ListView(children: [
          WebApplicationLogoContainer(),
          SideBarMenuItemsWidget(
            selectedIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ]),
      ),
    );
  }
}

List<Widget> pages = [
  VideoManagementSection(),
  const SubscribedStd(),

  ///.............. Recorded c Managementm

   StudyMaterialsManagementSection(),
  const StudyMaterialsPage(),
  Container(
    child: const Center(
      child: Text("data"),
    ),
  ),
  Container(
    child: GestureDetector(
      onTap: () async {},
      child: const Center(
        child: Text("Notification"),
      ),
    ),
  ),

  AllUsersForCoupenList(),
  const AllUsersList(),
];

class SideBarMenuItemsWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;
  const SideBarMenuItemsWidget({
    required this.selectedIndex,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 26, 47, 90),
      height: 800,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return ColoredBox(
              color:
                  selectedIndex == index ? themeColorBlue : Colors.transparent,
              child: ListTile(
                contentPadding: const EdgeInsets.only(
                  left: 10,
                ),
                onTap: () {
                  onTap.call(index);
                },
                iconColor: cWhite.withOpacity(0.6),
                leading: Icon(
                  sideMenuICons[index],
                  size: 13.2,
                ),
                title: GooglePoppinsWidgets(
                  text: sideMenu[index],
                  fontsize: 12.5,
                  color: cWhite.withOpacity(0.6),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 00,
            );
          },
          itemCount: sideMenu.length),
    );
  }
}

List<String> sideMenu = [
  'Recorded C Management',
  'Subscribed Students',
  'Study Materials',
  'Get Invoice',
  'Set User Access',
  'All Users',
  'Coupon Management',
];
List<IconData> sideMenuICons = [
  Icons.switch_video_outlined,
  Icons.volunteer_activism,
  Icons.picture_as_pdf,
  Icons.receipt,
  Icons.key,
  Icons.group,
  Icons.confirmation_num,
  // Icons.confirmation_number_outlined,
  // Icons.people,
  // Icons.attach_money_outlined,
  // Icons.people,
  // Icons.receipt_long,
  // Icons.keyboard_alt_outlined,
  // Icons.settings,
  // Icons.gavel,
];
