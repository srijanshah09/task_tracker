import 'package:flutter/material.dart';

class ExecuteScreen extends StatefulWidget {
  const ExecuteScreen({Key? key}) : super(key: key);

  @override
  State<ExecuteScreen> createState() => _ExecuteScreenState();
}

class _ExecuteScreenState extends State<ExecuteScreen> {
  final List<bool> _value = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        10,
        30,
        10,
        0,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Text('Today\'s Plan', style: Theme.of(context).textTheme.headlineMedium,),
              Flexible(
                child: Center(
                  child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (BuildContext context, index) {
                        _value.add(false);
                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: (index == 19 ? 80 : 0),
                          ),
                          child: Card(
                            borderOnForeground: true,
                            elevation: 4,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _value[index] = !_value[index];
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: _value[index]
                                            ? const Icon(
                                                Icons.check,
                                                size: 25.0,
                                                color: Colors.white,
                                              )
                                            : Icon(
                                                Icons.check_box_outline_blank,
                                                size: 25.0,
                                                color: Theme.of(context).primaryColor,
                                              ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  // ignore: avoid_unnecessary_containers
                                  Container(
                                    child: Text('This is a sample task ${index + 1}'),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height - 150,
            width: MediaQuery.of(context).size.width - 20,
            child: Center(
              child: IconButton(
                onPressed: () {
                  debugPrint('HERE');
                },
                icon: const Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
