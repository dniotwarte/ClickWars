 void setup(){
  textAlign(CENTER,CENTER);
}

int score = 0;
int sB = 0;
int sR = 0;

void draw(){
  score=sR-sB;
  background(0,0,255);
  
  fill(255,0,0);//(R,G,B)
  rect( 0,0,   width/2,height  ); //prostokąt od 0,0 (róg ekranu) do width/2,height (góry ekranu w połowie szerekości)
  fill(0,0,255);
  rect(width/2, height, width, 0);//drugi prostokąt tym razem od width/2,height (góry ekranu w połowie szerokośći) do width,0 (czyli końca szerokości ekranu, wysokość 0);
  
  fill(255,0,0);
  text(sB, width/2+300, 300);
  fill(0,0,255);
  text(sR, width/2-300, 300);
  fill(0,255,0);
  text(score, width/2, 100);
  
}

void mousePressed(){
  if(mouseX<width/2)sR++;   //jak kliknięto w ekran w miejscu x mniejszym od połowy ekranu, dodaj wyniku czerwonemu;
  else sB++;                //w innym razie dodaj wyniku niebieskiemu.
}