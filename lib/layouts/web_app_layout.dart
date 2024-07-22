import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class WebAppLayout extends StatelessWidget {
  final Widget child;
  const WebAppLayout({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 430,
                minWidth: 344,
                minHeight: MediaQuery.of(context).size.height,
              ),
              child: Scaffold(
                body: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: child,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
