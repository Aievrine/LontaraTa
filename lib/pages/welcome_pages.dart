part of 'pages.dart';

class WellcomePage extends StatelessWidget{
  const WellcomePage({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body:SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children : [  Image.asset('assets/images/logo.png', height: 333,fit: BoxFit.fill),
          SizedBox(
            height: 1,
          ),
          Text("ᨕᨁᨘᨑᨘᨀᨗ ᨒᨚᨈᨑ – Ayo Belajar Lontara!", style: dangerTextStyle,
          textAlign: TextAlign.center,
          ),
            SizedBox(
              height: 15,
            ),
          Text("Lontara adalah aksara tradisional masyarakat Bugis-Makassar yang sarat akan sejarah dan budaya.", 
          style: dangerTextStyle.copyWith(fontSize: 20),
          textAlign: TextAlign.center,),
          SizedBox(
            height: 51,
            
          ),
          Container(height: 60, width: MediaQuery.of(context).size.width - 2 * defaultMargin,
          child: ElevatedButton(
            onPressed: (){
            showModalBottomSheet(
              isScrollControlled: true,
              context: context, builder: (context) {
                return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
                  return Wrap(
                    children: [ 
                      // bagian modal
                      Container(
                        color: Colors.transparent,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(40), 
                            topLeft: Radius.circular(40))),
                            child: Column(

                              children: [
                                // jarak
                                SizedBox(height: 25,),
                                Row(children: [
                                  Text("Buat Akun Yuk !", style: whiteTextStyle.copyWith(fontSize: 20, color: dangerColor),),
                                ],),           
                                    Image.asset('assets/images/close.png', height: 30, width: 30,)],
                            ),
                        ),
                      )
                    ]
                  );
                }, );
              });
          }, 
          child: Text(
            'Buat Akun',
         style: whiteTextStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w500,
             color: primaryColor,),
          ),  
          style: ElevatedButton.styleFrom(backgroundColor: secondaryColor,
             shape: RoundedRectangleBorder
          (borderRadius: BorderRadius.circular(15))))),

          SizedBox(
            height: 15,
            
          ),
          Container(height: 60, width: MediaQuery.of(context).size.width - 2 * defaultMargin,
          child: ElevatedButton(onPressed: (){}, 
          child: Text(
            'Masuk',
         style: whiteTextStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w500,
             color: secondaryColor,),
          ),  
          style: ElevatedButton.styleFrom(backgroundColor: primaryColor,
             shape: RoundedRectangleBorder(
             side: BorderSide(color: secondaryColor, width: 3),
          borderRadius: BorderRadius.circular(15))))),

        SizedBox(
            height: 36,
          ),

        Text('By Kelompok 1 @2025', textAlign: TextAlign.center, style: whiteTextStyle.copyWith(color: dangerColor, fontSize: 11),),
        SizedBox(
            height: defaultMargin,
          ),

        ],
        ),
      ),
    );
  }
}