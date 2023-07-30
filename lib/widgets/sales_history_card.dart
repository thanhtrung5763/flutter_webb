import 'package:flutter/material.dart';

class SalesHistoryCard extends StatelessWidget {
  const SalesHistoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sales History',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                DropdownButton<String>(
                  iconSize: 20,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  underline: const SizedBox(),
                  items: <String>['Today', 'Yesterday']
                      .map((String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ))
                      .toList(),
                  onChanged: (String? newValue) {},
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: 0,
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Products',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Category \n↑↓',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Revenue \n↑↓',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Status \n↑↓',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Actions \n↑↓',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      SizedBox(
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/products/product-mini-1.jpg',
                              ),
                              width: 50,
                            ),
                            const Text(
                              'Bedroom',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        'Interior',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    DataCell(
                      Text(
                        '\$345',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    DataCell(
                      Text(
                        'Pending',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    DataCell(
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.edit),
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                          ),
                          PopupMenuButton(
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuEntry>[
                              PopupMenuItem(
                                child: Text('Remove'),
                                value: 1,
                              ),
                              PopupMenuItem(
                                child: Text('Edit'),
                                value: 2,
                              ),
                            ],
                            icon: const Icon(Icons.more_vert),
                            onSelected: (void value) {},
                          ),
                        ],
                      ),
                    ),
                  ]
                  ,
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      SizedBox(
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/products/product-mini-1.jpg',
                              ),
                              width: 50,
                            ),
                            const Text(
                              'Bedroom',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        'Interior',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    DataCell(
                      Text(
                        '\$345',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    DataCell(
                      Text(
                        'Pending',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    DataCell(
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.edit),
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                          ),
                          PopupMenuButton(
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuEntry>[
                              PopupMenuItem(
                                child: Text('Remove'),
                                value: 1,
                              ),
                              PopupMenuItem(
                                child: Text('Edit'),
                                value: 2,
                              ),
                            ],
                            icon: const Icon(Icons.more_vert),
                            onSelected: (void value) {},
                          ),
                        ],
                      ),
                    ),
                  ]
                  ,
                ),
              ]
            )
          )
        ]
      )
    );
  }
}