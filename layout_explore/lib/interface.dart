import 'package:flutter/material.dart';
import 'package:layout_explore/listTitle.dart';
import 'package:layout_explore/listview.dart';
import 'package:layout_explore/row.dart';
import 'package:layout_explore/wrap.dart';
import 'package:layout_explore/flex.dart';

class LayoutInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Layout Demo"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              child: Text('Warp Layout'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return DirectionWrap();
                  },
                ));
              },
            ),
            rowButton(context),
            flexButton(context),
            listViewButton(context),
            listTitleButton(context),
          ],
        ),
      ),
    );
  }

  Widget rowButton(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return LayoutRow();
        }));
      },
      child: Text('Row Layout'),
    );
  }

  Widget flexButton(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return FlexLayout();
        }));
      },
      child: Text('Flex Layout'),
    );
  }

  Object listViewButton(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LayoutListView();
        }));
      },
      child: Text("ListView Layout"),
    );
  }

  Widget listTitleButton(BuildContext context) {
    return RaisedButton(
      child: Text("List Title"),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ListTitleWidget();
        }));
      },
    );
  }
}
