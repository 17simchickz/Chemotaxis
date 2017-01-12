  
Bacteria[] bob;
   
   void setup()   
   {     
        
       size(500,500);
       bob = new Bacteria[10];
   
       for(int i = 0; i < bob.length; i ++)
       {
         bob[i] = new Bacteria();
       }  
   
   }   
   void draw()   
   {
        background(0);
       for( int k=0; k <bob.length; k ++)
       {
         bob[k].move();
         bob[k].show();
         
       }  
       
   }
 class Bacteria    
 {     
   int myX = (int)(Math.random()*500);
   int myY = (int)(Math.random()*500);
 
          
         void move()
        {
           myX = myX + (int)(Math.random()*8)-1;
           myY = myY + (int)(Math.random()*8)-1;
           
           int zx, zy;
           if(mouseX > myX)
           {
            zx = 0; 
           }
           else
           {
            zx = 3;
           }
           if(mouseY > myY)
           {
             zy = 0;
           }
           else
           {
             zy = 3;
           }
           
     
           if(mouseX > myX && mouseY > myY)
             {
              myX = myX + (int)(Math.random()*3)-zx;
              myY = myY + (int)(Math.random()*3)-zy;  
             }  
             else if(mouseX< myX && mouseY < myY)
             {
               myX = myX - (int)(Math.random()*3)-zx;
               myY = myY - (int)(Math.random()*3)-zy; 
             }
             else if(mouseX< myX && mouseY > myY)
             {
               myX = myX - (int)(Math.random()*3)-zx;
               myY = myY + (int)(Math.random()*3)-zy; 
             }
             else if(mouseX > myX && mouseY < myY)
             {
               myX = myX + (int)(Math.random()*3)-zx;
               myY = myY - (int)(Math.random()*3)-zy;
             }
             
        }
         void show()
        {
          fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
          ellipse(myX,myY,20,20);
          ellipse(myX,myY,30,30);
          
          if (mousePressed)
          background(0);
        }
        
 }          
   

  
