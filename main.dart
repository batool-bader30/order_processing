void main() {
  List<Map<String, dynamic>> order = [
    {"id": 1, "status": "ready", "item": "burger"},
    {"id": 2, "status": "canceled", "item": "pizza"},
    {"id": 2, "status": "vip", "item": "fries"},
    {"id": 4, "status": "ready", "item": "nuggets"},
    {"id": 5, "status": "vip", "item": "pasta"},
  ];

  for (int i = 0; i < order.length; i++) {
    if (order[i]["status"] == "canceled") {
      continue;
    } else {
      if (order[i]["status"] == "vip") {
        print("VIP order found! Stopping orders.");
        break;
      }
      switch (order[i]["item"]) {
        case "burger":
          print("The item is burger and it will take 30 minutes to prepare.");
          break;
        case "pizza":
          print("The item is pizza and it will take 30 minutes to prepare.");
          break;
        case "fries":
          print("The item is fries and it will take 15 minutes to prepare.");
          break;
        case "nuggets":
          print("The item is nuggets and it will take 20 minutes to prepare.");
          break;
        default:
          print("the item is unknown");
      }
      if (order[i]["id"] == 4) {
        print(" It may take a long time");
      }
    }
  }
}
