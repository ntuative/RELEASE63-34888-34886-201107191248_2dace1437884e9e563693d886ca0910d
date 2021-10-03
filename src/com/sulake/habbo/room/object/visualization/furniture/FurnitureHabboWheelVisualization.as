package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1139:int = 10;
      
      private static const const_729:int = 20;
      
      private static const const_1657:int = 31;
      
      private static const const_1541:int = 32;
       
      
      private var var_346:Array;
      
      private var var_902:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_346 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_902)
            {
               this.var_902 = true;
               this.var_346 = new Array();
               this.var_346.push(const_1657);
               this.var_346.push(const_1541);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_1139)
         {
            if(this.var_902)
            {
               this.var_902 = false;
               this.var_346 = new Array();
               this.var_346.push(const_1139 + param1);
               this.var_346.push(const_729 + param1);
               this.var_346.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_346.length > 0)
            {
               super.setAnimation(this.var_346.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
