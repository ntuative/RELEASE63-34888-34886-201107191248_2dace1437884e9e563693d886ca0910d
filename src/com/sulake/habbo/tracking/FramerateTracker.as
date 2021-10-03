package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1744:int;
      
      private var var_3000:int;
      
      private var var_787:int;
      
      private var var_520:Number;
      
      private var var_3001:Boolean;
      
      private var var_3002:int;
      
      private var var_2188:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_520);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_3000 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_3002 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_3001 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_787;
         if(this.var_787 == 1)
         {
            this.var_520 = param1;
            this.var_1744 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_787);
            this.var_520 = this.var_520 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_3001 && param3 - this.var_1744 >= this.var_3000)
         {
            this.var_787 = 0;
            if(this.var_2188 < this.var_3002)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_2188;
               this.var_1744 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
