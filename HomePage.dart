import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());
    return(
      Scaffold(
      appBar: AppBar(
        title: Text(
          'GETX',
          style: TextStyle(
            color: Colors.green[900],
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.green[900],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(()
                =>
                    Text(
                controller.count.value.toString(),
                style: TextStyle(
                  color: Colors.green[400],
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                ),
              ),),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      controller.increase();
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.green[400],
                      child: Center(
                        child: Icon(Icons.add, color: Colors.green[900]),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      controller.decrease();
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.green[400],
                      child: Center(
                        child: Icon(Icons.remove, color: Colors.green[900]),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    )
    );
  }
}

