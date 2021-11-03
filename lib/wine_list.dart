import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weintime/swagger_generated_code/wein_db.swagger.dart';

import 'add_wine_page.dart';
import 'auth_service.dart';

class WineList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WeinTime'),
      ),
      drawer: Drawer(
          child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('WeinDB'),
                ),
                ListTile(
                  title: const Text('Logout'),
                  onTap: () {
                    context.read<AuthService>().logout();

                    Navigator.pushNamedAndRemoveUntil(
                        context, '/', ModalRoute.withName('/'));
                  },
                ),
              ]
          )
      ),
      body: _buildBody(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateToAdd(context),
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }

  FutureBuilder<Response<WineListWeinDbResult>> _buildBody(BuildContext context) {
    return FutureBuilder<Response<WineListWeinDbResult>>(
      future: Provider.of<WeinDb>(context).wineGet(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
                textAlign: TextAlign.center,
                textScaleFactor: 1.3,
              ),
            );
          }
          if (snapshot.data!.isSuccessful) {
            final body = snapshot.data!.body;
            return _buildWineList(context, body);
          } else {
            return Center(
              child: Text(
                snapshot.data!.error.toString(),
                textAlign: TextAlign.center,
                textScaleFactor: 1.3,
              ),
            );
          }
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  ListView _buildWineList(BuildContext context, WineListWeinDbResult? wines) {
    return ListView.builder(
      itemCount: wines!.data!.length,
      padding: EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/wineType_" + wines.data![index].wineTypeId.toString() +".jpg"),
                          fit: BoxFit.contain)),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    child: Column(
                      children: <Widget>[
                        Text(wines.data![index].name.toString(),
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 8),
                        Text(
                          wines.data![index].vintage.toString(),
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(height: 8),
                        Text(
                            wines.data![index].vineyard.toString(),
                            style: TextStyle(fontSize: 14)
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void _navigateToAdd(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AddWinePage(),
      ),
    );
  }
}