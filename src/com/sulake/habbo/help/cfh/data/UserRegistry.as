package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1544:int = 80;
       
      
      private var var_537:Map;
      
      private var var_991:String = "";
      
      private var var_1500:Array;
      
      public function UserRegistry()
      {
         this.var_537 = new Map();
         this.var_1500 = new Array();
         super();
      }
      
      public function getRegistry() : Map
      {
         return this.var_537;
      }
      
      public function registerRoom(param1:String) : void
      {
         this.var_991 = param1;
         if(this.var_991 != "")
         {
            this.addRoomNameForMissing();
         }
      }
      
      public function unregisterRoom() : void
      {
         this.var_991 = "";
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(this.var_537.getValue(param1) != null)
         {
            this.var_537.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,this.var_991);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && this.var_991 == "")
         {
            this.var_1500.push(param1);
         }
         this.var_537.add(param1,_loc4_);
         this.purgeUserIndex();
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(this.var_537.length > const_1544)
         {
            _loc1_ = this.var_537.getKey(0);
            this.var_537.remove(_loc1_);
         }
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(this.var_1500.length > 0)
         {
            _loc1_ = this.var_537.getValue(this.var_1500.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = this.var_991;
            }
         }
      }
   }
}
