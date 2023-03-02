import '../model/quiz_data.dart';

class BiologiyaQuizRepository {
  static List<QuizData> biologySet() {
    List<QuizData> data = [];

    data.add(QuizData(
        questionText: "adasdadad",
        v1: "A.asd",
        v2: "B.adsadad",
        v3: "C.adasdasd",
        v4: "D.asdasdas",
        trueAnswer: "D.asdasdas"));

    data.add(QuizData(
        questionText: "12112312",
        v1: "A.2313",
        v2: "B.21313",
        v3: "C.1231231",
        v4: "D.13123",
        trueAnswer: "C.1231231"));

    data.add(QuizData(
        questionText: "11111111111",
        v1: "A.2222222",
        v2: "B.33333333333",
        v3: "C.44343",
        v4: "D.23444",
        trueAnswer: "A.2222222"));

    return data;
  }
}
