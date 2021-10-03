package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_2060:int = 0;
      
      private var var_1678:Dictionary;
      
      private var var_2169:int = 0;
      
      private var var_2170:int = 0;
      
      private var var_2678:Boolean = false;
      
      private var var_2919:int = 0;
      
      private var var_2917:int = 0;
      
      private var var_2676:Boolean = false;
      
      public function Purse()
      {
         this.var_1678 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2060;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2060 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2169;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2169 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2170;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2170 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_2169 > 0 || this.var_2170 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2678;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2676;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2676 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2678 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2919;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2919 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2917;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2917 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1678;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1678 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1678[param1];
      }
   }
}
