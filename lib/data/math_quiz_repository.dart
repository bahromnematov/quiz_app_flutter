import '../model/quiz_data.dart';

class MathQuizRepository {
  static List<QuizData> mathSet() {
    List<QuizData> data = [];

    data.add(QuizData(
        questionText:
            "Qaysi bir javob natural  sonlar qatorini tashkil qiladi?",
        v1: "A.1,2,3,4,5",
        v2: "B.1,4,5,6,…",
        v3: "C.1,2,3,4,…",
        v4: "D.2,3,4:",
        trueAnswer: "D"));

    data.add(QuizData(
        questionText: "3 million 47 ming 750 sonini raqamlar bilan yozing?",
        v1: "A.347 500",
        v2: "B.3 047 750",
        v3: "C.30 047 500",
        v4: "D.47 500 ",
        trueAnswer: "B"));

    data.add(QuizData(
        questionText: "a + 36 = 63 tenglamani yeching?",
        v1: "A.97",
        v2: "B.27",
        v3: "C.39",
        v4: "D.99",
        trueAnswer: "B"));

    data.add(QuizData(
        questionText: "Qaysi misolda qo`shish to`g`ri bajarilgan?",
        v1: "A.334+265=790",
        v2: "B.876+385=1061",
        v3: "C.217+323=540",
        v4: "D.415+395=800",
        trueAnswer: "D"));

    data.add(QuizData(
        questionText: "86694-(3999+30695)  ifodaning son qiymatini toping",
        v1: "A.49000",
        v2: "B.110390",
        v3: "C.50000",
        v4: "D.52000",
        trueAnswer: "D"));

    data.add(QuizData(
        questionText:
            "7  raqami  ishtirok etgan barcha ikki xonali sonlar nechta?",
        v1: "A.10 ta",
        v2: "B.19 ta",
        v3: "C.9 ta",
        v4: "D.18 ta",
        trueAnswer: "A"));

    data.add(QuizData(
        questionText:
            "220 394 sonini yozishda nechta turli raqamdan foydalanilgan?",
        v1: "A.6 ta",
        v2: "B.5 ta",
        v3: "C.4 ta",
        v4: "D.3 ta",
        trueAnswer: "B"));

    data.add(QuizData(
        questionText: "Ifodani  soddalashtiring:   3a + 4b - a + 2b - c ",
        v1: "A.4a+6b+c",
        v2: "B.2a+6b-c",
        v3: "C.2a+6b+c",
        v4: "D.4a+6b-c",
        trueAnswer: "B"));

    data.add(QuizData(
        questionText: "Hisoblang: 56 * 204 : 12 = ?",
        v1: "A.952",
        v2: "B.932",
        v3: "C.820",
        v4: "D.5992",
        trueAnswer: "A"));

    data.add(QuizData(
        questionText: "Tenglamani  yecing: 94 - 2x = 14",
        v1: "A.40",
        v2: "B.45",
        v3: "C.55",
        v4: "D.54",
        trueAnswer: "A"));

    return data;
  }
}
