Bacteria[] A;  
 void setup()   
 {   
   size(400,400);
  A = new Bacteria[300];
   for (int i=0; i<A.length; i++)
   {
     A[i] = new Bacteria();
   }

 }   
 void draw()   
 {
   background(145,109,46);
   for (int i=0; i<A.length; i++)
   {
     
     A[i].show();
     A[i].walk();
  }
 }  
 class Bacteria    
 {
   int myX;
   int myY;
   int size;

   Bacteria() 
   {
     myX = (int)(Math.random()*150 -10);
     myY = (int)(Math.random()*150 -10);
     size = 3;
  }
  void walk()
  {
     if(mouseX > myX)
     {
       myX = myX + (int)(Math.random()*5 -1);
     }else{
       myX = myX + (int)(Math.random()*5 -3);
    }

    if(mouseY > myY)
    {
      myY = myY + (int)(Math.random()*5 -1);
    }else{
      myY = myY + (int)(Math.random()*5 -3);
    }
  } 
  void show()
   {
     //beeeeeees 
     fill(255,240,178);
     noStroke();
     ellipse(myX,myY,30,30);
 fill(0);
     ellipse(myX+10,myY-10,20,15);
     ellipse(myX-4,myY-1,2,25);
     ellipse(myX+2,myY-1,2,25);
     ellipse(myX+10,myY-1,2,25);
     ellipse(myX-7,myY-1,5,5);
   } 
 }  
