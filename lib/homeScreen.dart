import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _MyCarsState();
}

class _MyCarsState extends State<HomeScreen> {

  final List<Map<String, dynamic>> items = [
    {
      'value': 'Jubail',
      'label': 'Jubail',
    },
    {
      'value': 'Dammam',
      'label': 'Dammam',
    },
    {
      'value': 'Khobar',
      'label': 'Khobar',
    },
  ];

   String _valueChanged = '';
   String _valueToValidate = '';
   String _valueSaved = '';


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:const EdgeInsets.all(20.0),
      child: Column(
          children: <Widget>[
            SelectFormField(
                type: SelectFormFieldType.dialog,
                labelText: "City",
                dialogTitle: 'City',
                dialogCancelBtn: 'CANCEL',
                enableSearch: true,
                dialogSearchHint: 'Search item',
                items: items,
                onChanged: (val) => setState(() => _valueChanged = val),
                validator: (val) {
                  setState(() => _valueToValidate = val ?? '');
                  return null;
                },
                onSaved: (val) => setState(() => _valueSaved = val ?? '')

            ),
            const SizedBox(height: 20.0,),
            SelectFormField(
                type: SelectFormFieldType.dialog,
                labelText: "Model",
                // icon:Icon(Icons.location_city),
                dialogTitle: 'Car Model',
                dialogCancelBtn: 'CANCEL',
                enableSearch: true,
                dialogSearchHint: 'Search item',
                items: items,
                onChanged: (val) => setState(() => _valueChanged = val),
                validator: (val) {
                  setState(() => _valueToValidate = val ?? '');
                  return null;
                },
                onSaved: (val) => setState(() => _valueSaved = val ?? '')

            ),
            const SizedBox(height: 20.0,),
            Card(
              elevation: 10,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              child: Container(
                child:Column(
                  children: [
                    Stack(
                           children:[ 
                             Image.network("https://ymimg1.b8cdn.com/resized/car_model/7020/logo/mobile_listing_main_01.jpg",
                          fit: BoxFit.fitWidth,
                             height: 200,
                          ),
                            ]
                          ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children:  [
                          Wrap(
                            children:const [
                              Icon(Icons.monetization_on_outlined),
                              SizedBox(width: 10,),
                              Text("250 SAR/Day",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.7,
                            ),
                            ),]
                          ),
                         const SizedBox(height: 10,),
                          Wrap(
                            children:const [
                              Icon(Icons.directions_car),
                              SizedBox(width: 10,),
                              Text("Toyota Corolla 2019",
                              style: TextStyle(
                                fontSize: 18,
                                letterSpacing: 1.0,
                              ),
                            ),
                            ]
                          ),

                        ],
                      ),
                    ),
                    Container(
                      padding:const EdgeInsets.symmetric(horizontal: 8.0,vertical: 0),
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){},
                          child:const Text("Book Now")
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),

    );

  }
}
