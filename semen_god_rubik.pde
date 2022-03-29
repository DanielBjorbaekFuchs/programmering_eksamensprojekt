import java.util.HashSet;
String[]x = {"F", "B", "U", "D", "R", "L"};
String[]x1 = {"", "'", "2"};
ArrayList<String> traek = new ArrayList<String>();
ArrayList<Integer> temp = new ArrayList<Integer>();
HashSet<Integer> ens = new HashSet<Integer>();
String[]endelig = new String [20];
int laengde = 0;
int tal;
int i = 0;
void setup() {
  noLoop();
}
void draw() {
  for (int j = 0; j < 21; j++) {
    tal = int(random(6));
    // println(tal);
    ens.add(tal);


    laengde++;
    while (ens.size() != laengde) {
      tal = int(random(6));
      ens.add(tal);
    }
    temp.add(tal);

    println("tal", tal);
    traek.add(x[tal]+x1[int(random(3))]);
    if (ens.size() == 2) {
      println("tal", tal, "temp", temp);
      ens.remove(temp.get(i));
      i++;
      System.out.println(temp);
      laengde--;
    }
    //laengde--;
    println(traek.size(), "laengde", laengde);
   
  }
  System.out.println(traek);
}
