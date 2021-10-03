package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1183:int;
      
      private var var_2071:String;
      
      private var var_1811:int;
      
      private var var_2425:int;
      
      private var var_2424:int;
      
      private var var_1809:int;
      
      private var var_1810:Boolean;
      
      private var _category:String;
      
      private var var_2426:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1183 = param1.readInteger();
         this.var_2071 = param1.readString();
         this.var_1811 = Math.max(1,param1.readInteger());
         this.var_2425 = param1.readInteger();
         this.var_2424 = param1.readInteger();
         this.var_1809 = param1.readInteger();
         this.var_1810 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2426 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_2071;
      }
      
      public function get level() : int
      {
         return this.var_1183;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1811;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2425;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2424;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1809;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1810;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2426;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1183 > 1 || this.var_1810;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1809 = this.var_1811;
      }
   }
}
