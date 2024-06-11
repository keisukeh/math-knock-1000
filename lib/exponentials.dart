class ExponentialProblemSet {
  final String problem;
  final String answer;

  ExponentialProblemSet({
    required this.problem,
    required this.answer,
  });
}

List<ExponentialProblemSet> exponentialProblems = [
  ExponentialProblemSet(
    problem: r"次の式を指数法則を使って簡単にせよ。 \( (x^3)^2 \)",
    answer: r"(x^3)^2 = x^{3 \cdot 2} = x^6",
  ),
  ExponentialProblemSet(
    problem: r"次の式を指数法則を使って簡単にせよ。 \( \frac{a^5}{a^2} \)",
    answer: r"\frac{a^5}{a^2} = a^{5-2} = a^3",
  ),
  ExponentialProblemSet(
    problem: r"次の式を指数法則を使って簡単にせよ。 \( (2x^4 \cdot y^2)^3 \)",
    answer:
        r"(2x^4 \cdot y^2)^3 = 2^3 \cdot (x^4)^3 \cdot (y^2)^3 = 8x^{12}y^6",
  ),
];
