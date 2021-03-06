package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1435:IHabboTracking;
      
      private var var_1777:Boolean = false;
      
      private var var_2875:int = 0;
      
      private var var_2104:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1435 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1435 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1777 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2875 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1777)
         {
            return;
         }
         ++this.var_2104;
         if(this.var_2104 <= this.var_2875)
         {
            this.var_1435.trackGoogle("toolbar",param1);
         }
      }
   }
}
