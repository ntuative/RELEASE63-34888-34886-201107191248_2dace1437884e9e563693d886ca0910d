package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1541:int = 3;
      
      private static const const_1428:int = 2;
      
      private static const const_1427:int = 1;
      
      private static const const_1429:int = 15;
       
      
      private var var_346:Array;
      
      private var var_1158:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_346 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1428)
         {
            this.var_346 = new Array();
            this.var_346.push(const_1427);
            this.var_1158 = const_1429;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1158 > 0)
         {
            --this.var_1158;
         }
         if(this.var_1158 == 0)
         {
            if(this.var_346.length > 0)
            {
               super.setAnimation(this.var_346.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
