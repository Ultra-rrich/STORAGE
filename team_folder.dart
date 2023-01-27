import 'package:flutter/material.dart';

class TeamFolderPage extends StatefulWidget {
  const TeamFolderPage({Key? key}) : super(key: key);

  @override
  State<TeamFolderPage> createState() => _TeamFolderPageState();
}

class _TeamFolderPageState extends State<TeamFolderPage> {
  double availableScreenWidth = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    availableScreenWidth = MediaQuery.of(context).size.width - 50;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        // first column
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 25,
            ),
            height: 170,
            decoration: BoxDecoration(color: Colors.blue.shade800),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // second column,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'Riotters',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Team Folder',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    )
                  ],
                ),
                // const SizedBox(width: 160),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.1),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: 28,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.1),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          size: 28,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                    text: 'Storage',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: ' 9.1/10GB',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Upgrade',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildFileSizeChart('SOURCES', Colors.blue, .3),
                const SizedBox(width: 2),
                buildFileSizeChart('DOCS', Colors.red, .25),
                const SizedBox(width: 2),
                buildFileSizeChart('IMAGES', Colors.yellow, .20),
                const SizedBox(width: 2),
                buildFileSizeChart('', Colors.grey.shade300, .23),
              ],
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          const Divider(
            height: 20,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(25),
              children: [
                const Text(
                  'Recently Updated',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildFileColumn('sketch', 'desktop', '.sketch'),
                    SizedBox(width: availableScreenWidth * .03),
                    buildFileColumn('figma', 'mobile', '.figma'),
                    SizedBox(width: availableScreenWidth * .03),
                    buildFileColumn('pinterest', 'live', '.pinterest'),
                  ],
                ),
                Divider(
                  height: 60,
                  color: Colors.grey.shade300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Project',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Create new',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                buildProjectRow('WKHKKYD'),
                buildProjectRow('Ansy'),
                buildProjectRow('Applications'),
                buildProjectRow('Screenshots'),
                buildProjectRow('Chatbox'),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            selectedIndex = selectedIndex;
          });
        },
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time,
              size: 35,
            ),
            label: 'Time',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_link,
              size: 35,
            ),
            label: 'Folder',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(shape: BoxShape.circle, boxShadow: [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 7,
            blurRadius: 1,

          
          )
        ]),
        child: FloatingActionButton(
          elevation: 25,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }

  Container buildProjectRow(String foldername) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade200,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.folder,
                color: Colors.blue.shade200,
              ),
              const SizedBox(width: 12),
              Text(
                foldername,
                style: TextStyle(
                  color: Colors.grey.shade800,
                  // fontSize: 16,
                  // fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
            ),
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Column buildFileColumn(
    String image,
    String filename,
    String extension,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: availableScreenWidth * .31,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade200,
          ),
          padding: const EdgeInsets.all(30),
          height: 120,
          child: Image.asset('images/$image.png'),
        ),
        const SizedBox(height: 12),
        RichText(
          text: TextSpan(
              text: filename,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              children: [
                TextSpan(
                    text: extension,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ))
              ]),
        )
      ],
    );
  }

  Column buildFileSizeChart(
    String title,
    Color color,
    double widthPercentage,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 5,
          width: availableScreenWidth * widthPercentage,
          color: color,
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
