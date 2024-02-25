import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> filters = [
      'All',
      'Adidas',
      'Nike',
      'Bata',
    ];

    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(225, 225, 225, 1),
      ),
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(50),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Shoes\nCollection',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                itemCount: filters.length,
                itemBuilder: (context, index) {
                  final filter = filters[index];
                  return Chip(
                    label: Text(filter),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
