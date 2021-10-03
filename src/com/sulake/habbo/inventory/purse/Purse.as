package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2169:int = 0;
      
      private var var_2170:int = 0;
      
      private var var_2677:int = 0;
      
      private var var_2675:Boolean = false;
      
      private var var_2678:Boolean = false;
      
      private var var_2676:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2169 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2170 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2677 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2675 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2678 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_2676 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2169;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2170;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2677;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2675;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2678;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_2676;
      }
   }
}
