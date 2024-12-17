import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({super.key});

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  final List<String> items = [
    'Coding',
    'Flutter',
    'Programming',
    'Code folks',
    'Android',
    'iOS',
    'Java',
    'HTML',
    'JavaScript',
    'CSS',
    'Developer',
    'Movie',
    'Netflix',
    'Book',
    'Photography',
  ];

  List<String> filteritems = [];

  void _filteritems(String query) {
    if (query.isEmpty) {
      setState(() {
        filteritems = [];
      });
      return;
    }
    setState(() {
      filteritems = items
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('S E A R C H B A R'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: SizedBox(
                width: 300, // Specify the desired width
                child: TextField(
                  onChanged: _filteritems,
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    hintText: "Search here....",
                    hintStyle: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteritems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(filteritems[index]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

