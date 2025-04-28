enum Category {Thinker, Feeler, Planner, Adventurer}

const Map<Category, String> resultString = {
  Category.Thinker : "You are a Thinker\n🧠\nLogical, curious, and focused on ideas.",
  Category.Feeler: "You are a Feeler\n💖\nEmpathetic, warm, and guided by emotion.",
  Category.Planner: "You are a Planner\n📅\nOrganized, strategic, and goal-oriented.",
  Category.Adventurer : "You are an Adventurer\n🗺️\nSpontaneous, bold, and always exploring.",
};

class Answers {
  
  final String text;
  final Category category;

  const Answers(this.text, this.category);

}