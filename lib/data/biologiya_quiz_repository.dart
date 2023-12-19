import '../model/quiz_data.dart';

class BiologiyaQuizRepository {
  static List<QuizData> biologySet() {
    List<QuizData> data = [];

//1
    data.add(QuizData(
        questionText:
            "O’zb.da tabiiy holda o’sadigan yuksak o’simliklarning turi qancha?",
        v1: "A.4500",
        v2: "B.3700",
        v3: "C.8000",
        v4: "D.500 000",
        trueAnswer: "A"));
//2
    data.add(QuizData(
        questionText:
            "Yer yuzida tabiiy holda o’sadigan yuksak o’simliklarning turi qancha?",
        v1: "A.4500",
        v2: "B.3700",
        v3: "C.8000",
        v4: "D.500 000",
        trueAnswer: "D"));
//3
    data.add(QuizData(
        questionText:
            "Botanika so’zi qaysi so’zdan olingan va qanday ma’noni bildiradi?",
        v1: "A.yunoncha “botane” - o’t",
        v2: "B.yunoncha “botane” -  o’tli",
        v3: "C.yunoncha “botane” - o’t-o’simlik, ko’kat",
        v4: "D.yunoncha “botane” – o’saman, rivojlanaman",
        trueAnswer: "C"));
//4
    data.add(QuizData(
        questionText:
            "O’simliklar yer sharida tarqalish qonuniyatlarini  o’rganadigan {a}va tashqi muxit bilan bo’lgan munosabatlaridagi qonuniyatlari va tashqi muhit omillarining o’simliklarga tasirini{b} qaysi bo’limlar o’rgandi.",
        v1: "A.a-Ekologya b- Ekologya ",
        v2: "B.a-geobotanika  b-ekologya ",
        v3: "C.a-marfologya  b-geobotanika",
        v4: "D.a-geobotanika  b-o’simliklar anatomyasi",
        trueAnswer: "B"));
//5
    data.add(QuizData(
        questionText: "Novda nima ?",
        v1: "A.daraxtlarning o'zida kurtak va barg hosil qiladigan bir yillik shoxi",
        v2: "B.butalar (yarim buta)ning o'zida kurtak va barg hosil qiladigan bir yillik shoxi",
        v3: "C.urug'dan unib chiqqan bir yillik nihol",
        v4: "D.hammasi",
        trueAnswer: "D"));
//6
    data.add(QuizData(
        questionText: "Har 100 metrda nima o’zgaradi?",
        v1: "A.balandlikda 0,6 0C   pasayadi, chuqurlikda +3 0C   ortadi",
        v2: "B.balandlikda 0,6 0C   ortadi, chuqurlikda +3 0C   pasayadi",
        v3: "C.balandlikda +3 0C   pasayadi, chuqurlikda 0,6 0C   ortadi",
        v4: "D.balandlikda 0,6 0C   ortadi, chuqurlikda +3 0C   ortadi",
        trueAnswer: "A"));
//7
    data.add(QuizData(
        questionText:
            "Litosferaning (I), gidrosferaning (II) quyi chegaralarini aniqlang",
        v1: "A.I-3 km  II-11 km",
        v2: "B.I-3 km  II-11 km",
        v3: "C.I-11 km  II-3 km",
        v4: "D.1-7 km  II-10 km",
        trueAnswer: "B"));
//8
    data.add(QuizData(
        questionText: "Biosferadagi tirik moddalarni nimalar tashkil qiladi?",
        v1: "A.Produsentlar, konsumentlar va redusentlar",
        v2: "B.O’simliklar, hayvonlar",
        v3: "C.Produsentlar va redusentlar",
        v4: "D.Barcha tirik organizmlar va suv",
        trueAnswer: "A"));
//9
    data.add(QuizData(
        questionText:
            "V.I.Vernadskiy fikricha biosferani o’zgartiruvchi kuch sifatida asosiy rolni nima bajaradi?",
        v1: "A.Tirik modda",
        v2: "B.Qattiq modda",
        v3: "C.Radioaktiv modda",
        v4: "D.Biogen va abiogen hosil bo’lgan modda",
        trueAnswer: "A"));
//10
    data.add(QuizData(
        questionText:
            "Tirik moddalar tarkibidagi qaysi elementlar anorganik tabiatga nisbatan yuqori bo’ladi?",
        v1: "A.H, C, N, O, Na, Mg, Cr, S, Cl, K, Ca",
        v2: "B.H, C, N, O, Na, Mg, Cr, S, Cl, K, Fe",
        v3: "C.H, C, N, O, Na, Mn, Cr, S, Cl, K, Ca",
        v4: "D.H, C, N, O, Na, Mn, Cr, S, Cl, K, Fe",
        trueAnswer: "A"));

    return data;
  }
}
