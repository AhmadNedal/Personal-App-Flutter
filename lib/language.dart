bool lon = false;

String carten = "Your shopping cart is empty"; //
String cartar = "سلة المشتريات فارغة "; //

String signen = "Sign In";
String signar = "تسجيل الدخول";

String enteremailen = "Enter Your Email : ";
String enteremailar = "أدخل بريدك الإلكتروني :";

String enterpassen = "Enter Your Password : ";
String enterpassar = "ادخل رقمك السري :";

String forgeten = 'Forgot Password ?';
String forgetar = "نسيت كلمة السر ؟";

String donthavaaccounten = "Do not have an account?";
String donthavaaccountar = "لا تمتلك حساب ؟";

String createaccounten = 'sign up';
String createaccountar = "انشاء حساب";

String skipen = 'Skip';
String skipar = "تخطي";

String mobileen = 'Mobile application developer';
String mobilear = "مطور تطبيقات موبايل ";

String experen = "My Experience";
String experar = "خبـرتـي";

String homeen = "Home";
String homear = "الـرئيسـية";

String servicesen = "Services";
String servicesar = "الخـدمـات";

String selectedservicesen = "Selected Services";
String selectedservicesar = "الـخدمات المختارة";

String aboutmeen = "About me";
String aboutmear = "عــنـي";

String logouten = "Logout";
String logoutar = "تـسجيل الخروج";

String usernameen = "Enter Your username : ";
String usernamear = "ادخل اسم المستخدم";

String registeren = "register";
String registerar = "تسـجيل";

String androiddisen =
    "Designing an Android application using Java and XML, the app will be fully integrated with up to 3 pages, utilizing a local database. Delivery will include an APK file. An additional service is available for uploading it to the Play Store at a different price. You can explore all our services.";
String androiddisar =
    "تصميم تطبيق اندرويد باستخدام لغة جافا وxml ويكون التطبيق كامل متكامل بعدد صفحات لا يتجاوز ال 3 مع استخدام قاعدة بيانات محلية والتسليم يكون على صيفة ملف apk يوجد خدمة اضافية ليتم رفعه على متجر بلاي   بسعر مختلف , بامكانك الاطلاع على جميع خدماتنا .";

String androiddisupperen =
    "Designing an Android application using Java and XML, the app will be fully integrated with up to 3 pages, utilizing a local database. Delivery will include an APK file. An additional service is available for uploading it to the Play Store at a different price. You can explore all our services.";
String androiddisupperar ="تصميم تطبيق اندرويد باستخدام لغة جافا وxml ويكون التطبيق كامل متكامل بعدد صفحات لا يتجاوز ال 3 مع استخدام قاعدة بيانات محلية والتسليم يكون على صيفة ملف apk يوجد خدمة اضافية ليتم رفعه على متجر بلاي   بسعر مختلف , بامكانك الاطلاع على جميع خدماتنا ";

String androidflutteren = "Designing an Android application using Dart and Flutter, the application will be fully integrated with the use of an online database, Firebase. Delivery will be in the form of an IPA file for uploading to the Apple Store. An additional service is available at a different price for uploading your application to the Apple Store. Prices are per page. You can view all our services.";

String androidflutterar ="تصميم تطبيق اندرويد باستخدام Dart و Flutter ويكون التطبيق كامل متكامل مع استخدام قاعدة بيانات على الانترنت FireBase  والتسليم يكون على صيفة ملف ipa ليتم رفعه على متجر Apple يوجد خدمة اضافية بسعر مختلف لرفع تطبيقك على متجر Apple الاسعار في الاعلى للصفحة الواحدة بامكانك الاطلاع على جميع خدماتنا .";

String androidflutterupperen = "Designing an Android application using Dart and Flutter, the application will be fully integrated with more than 3 pages, utilizing an online Firebase database. Delivery will be in the form of an IPA file for submission to the Apple Store. An additional service is available at a different price for uploading your application to the Apple Store. Prices are per page. You can check out all our offerings";
String androidflutterupperar = "تصميم تطبيق اندرويد باستخدام Dart و Flutter ويكون التطبيق كامل متكامل بعدد صفحات يتجاوز الـ 3 صفحات مع استخدام قاعدة بيانات على الانترنت Firebase والتسليم يكون على صيفة ملف ipa ليتم رفعه على متجر Apple يوجد خدمة اضافية بسعر مختلف لرفع تطبيقك على متجر Apple الاسعار في الاعلى للصفحة الواحدة بامكانك الاطلاع على جميع عروضنا .";

String detailsen =  "Details : ";
String detailsar ="التفـاصيل";

String adden =  "Add";
String addar ="اضافة";

String aboutdetailsen =  "I am Ahmad Nidal, residing in Amman, Jordan, born in 2004. I completed secondary school in 2022 with a GPA of 88.05 in the scientific track. Subsequently, I enrolled at Al-Balqa' Applied University in Salt, majoring in Software Engineering. I trained in Java programming language, followed by Android app development using Java. Later, I learned application development using Flutter, where I completed a project using Flutter.";
String  aboutdetailsar ="أنا أحمد نضال أسكن في الاردن عمان مواليد عام 2004 انتهيت من المرحلة الثانوية عام 2022 بمعدل 88.05 الفرع العلمي ومن ثم التحقت في جامعة البلقاء -السلط- في تخصص هندسة البرمجيات ...   تدربت على لغة جافا ومن ثم اكملت تعلم الاندرويد باستخدام جافا ومن ثم تعلمت برمجة التطبيقات باستخدام Flutter لاكمل فيها وهذا التطبيق باستخدام flutter .";

String languageen = 'language';
String languagear = "اللغة";


String informationen = "“This information is fictitious, ineffective and for the purpose of experimentation.”";
String informationar = "“هذه المعلومات وهمية وغير فعالة ولغاية التجربة ”";

String information() {
  return lon ? informationar : informationen;
}

String language() {
  return lon ? languagear : languageen;
}
String aboutdetails() {
  return lon ? aboutdetailsar : aboutdetailsen;
}
String add() {
  return lon ? addar : adden;
}

String ddetails() {
  return lon ? detailsar : detailsen;
}
String androidflutterupper() {
  return lon ? androidflutterupperar : androidflutterupperen;
}
String androidflutter() {
  return lon ? androidflutterar : androidflutteren;
}

String androiddisupper() {
  return lon ? androiddisupperar : androiddisupperen;
}
String rregisters() {
  return lon ? registerar : registeren;
}

String androiddis() {
  return lon ? androiddisar : androiddisen;
}

String username() {
  return lon ? usernamear : usernameen;
}

String abouttme() {
  return lon ? aboutmear : aboutmeen;
}

String logout() {
  return lon ? logoutar : logouten;
}

String prselectedservices() {
  return lon ? selectedservicesar : selectedservicesen;
}

String home() {
  return lon ? homear : homeen;
}

String services() {
  return lon ? servicesar : servicesen;
}

String mobile() {
  return lon ? mobilear : mobileen;
}

String exper() {
  return lon ? experar : experen;
}

String skip() {
  return lon ? skipar : skipen;
}

String createaccount() {
  return lon ? createaccountar : createaccounten;
}

String donthavaaccount() {
  return lon ? donthavaaccountar : donthavaaccounten;
}

String forget() {
  return lon ? forgetar : forgeten;
}

String carten1() {
  return lon ? cartar : carten;
}

String enteremail() {
  return lon ? enteremailar : enteremailen;
}

String enterpass() {
  return lon ? enterpassar : enterpassen;
}

String sign() {
  return lon ? signar : signen;
}
