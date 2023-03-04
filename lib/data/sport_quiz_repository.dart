import '../model/quiz_data.dart';

class SportQuizRepository {
  static List<QuizData> sportSet() {
    List<QuizData> data = [];

    data.add(QuizData(
        questionText: "Marafon qancha davom etadi?",
        v1: "A.42.195 kilometr",
        v2: "B.44.195 kilometr",
        v3: "C.32.195 kilometr",
        v4: "D.47 kilometr",
        trueAnswer: "A"));

    data.add(QuizData(
        questionText: "Beysbol jamoasida nechta o'yinchi bor?",
        v1: "A.8 ta",
        v2: "B.9 ta",
        v3: "C.11 ta",
        v4: "D.7 ta",
        trueAnswer: "B"));

    data.add(QuizData(
        questionText: " JCh-2018da qaysi davlat g'olib chiqdi?",
        v1: "A.Angliya",
        v2: "B.Germaniya",
        v3: "C.Fransiya",
        v4: "D.Italiya",
        trueAnswer: "C"));

    data.add(QuizData(
        questionText: "Qaysi sport “sport qiroli” hisoblanadi?",
        v1: "A.kurash",
        v2: "B.valeybol",
        v3: "C.basketbal",
        v4: "D.fudbol",
        trueAnswer: "D"));

    data.add(QuizData(
        questionText: "Kanadaning ikkita milliy sport turi nima?",
        v1: "A.Lakros va xokkey",
        v2: "B.kurash va xokkey",
        v3: "C.Lakros va sambo",
        v4: "D.Lakros va fudbol",
        trueAnswer: "A.2222222"));

    data.add(QuizData(
        questionText: "Amir Xon qaysi yili boks bo‘yicha Olimpiada medalini qo‘lga kiritgan?",
        v1: "A.2022",
        v2: "B.2018",
        v3: "C.2006",
        v4: "D.2004",
        trueAnswer: "D"));

    data.add(QuizData(
        questionText: "Muhammad Alining haqiqiy ismi nima?",
        v1: "A.Muhammad Ali",
        v2: "B.Kassius Kley",
        v3: "C.Jon Keliy",
        v4: "D.Amel Aba",
        trueAnswer: "B"));


    data.add(QuizData(
        questionText: "Olimpiadada suzishning qaysi turiga ruxsat berilmaydi?",
        v1: "A.kapalak",
        v2: "B.Orqa suzish",
        v3: "C.erkin",
        v4: "D.It paqiri",
        trueAnswer: "D"));

    data.add(QuizData(
        questionText: "Quyidagilardan qaysi biri suv sporti turiga kirmaydi?",
        v1: "A.Paraplantda uchish",
        v2: "B.Qoyalarda sho'ng'in",
        v3: "C.Vindsfing",
        v4: "D.Yugurish",
        trueAnswer: "A"));

    data.add(QuizData(
        questionText: " Qaysi davlat suzish bo‘yicha Olimpiya o‘yinlarida eng ko‘p oltin medalga ega?",
        v1: "A.Xitoy",
        v2: "B.AQSH",
        v3: "C.Buyuk Britaniya",
        v4: "D.Avstraliya",
        trueAnswer: "B"));

    return data;
  }
}
