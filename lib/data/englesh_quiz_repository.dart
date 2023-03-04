import '../model/quiz_data.dart';

class EngleshQuizRepository {
  static List<QuizData> engleshSet() {
    List<QuizData> data = [];

    data.add(QuizData(
        questionText: "_____ they coming over for dinner?",
        v1: "A.Is",
        v2: "B.Are",
        v3: "C.Am",
        v4: "D.Our",
        trueAnswer: "B"));

    data.add(QuizData(
        questionText: "Maxwell _____ not sleeping on our sofa.?",
        v1: "A.are",
        v2: "B.is",
        v3: "C.am",
        v4: "D.her",
        trueAnswer: "B"));

    data.add(QuizData(
        questionText: "My mother-in-law is _____ at our house this week.",
        v1: "A.stay",
        v2: "B.staying",
        v3: "C.be staying",
        v4: "D.Staed",
        trueAnswer: "B"));

    data.add(QuizData(
        questionText: "I _____ my dinner right now.",
        v1: "A.eat",
        v2: "B.eating",
        v3: "C.am eating",
        v4: "D.Ate",
        trueAnswer: "C"));

    data.add(QuizData(
        questionText: "My sister _____ Spanish.",
        v1: "A.is learning",
        v2: "B.learning",
        v3: "C.learned",
        v4: "D.learn",
        trueAnswer: "A"));

    data.add(QuizData(
        questionText: "I _____ at the hair salon until September.",
        v1: "A.work",
        v2: "B.be working",
        v3: "C.am working",
        v4: "D.Are",
        trueAnswer: "C"));

    data.add(QuizData(
        questionText:
            "We _____ at a fancy restaurant tonight. Jason decided this yesterday.",
        v1: "A.eat",
        v2: "B.are eating",
        v3: "C.eats",
        v4: "D.ate",
        trueAnswer: "B"));

    data.add(QuizData(
        questionText: "Why ________ playing football tomorrow?",
        v1: "A.he not is",
        v2: "B.isn't he",
        v3: "C. he isn't",
        v4: "D.he is",
        trueAnswer: "C"));

    data.add(QuizData(
        questionText: "They are _____ a new shopping mall downtown.",
        v1: "A.opening",
        v2: "B.openning",
        v3: "C.oppening",
        v4: "D.oppen",
        trueAnswer: "A"));

    data.add(QuizData(
        questionText: "Melissa is _____ down on her bed. ?",
        v1: "A.lieing",
        v2: "B.liying",
        v3: "C.lying",
        v4: "D.lyied",
        trueAnswer: "C"));

    return data;
  }
}
