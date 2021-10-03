package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1183:int;
      
      private var var_2202:int;
      
      private var var_2425:int;
      
      private var var_2424:int;
      
      private var var_2548:int;
      
      private var var_2071:int;
      
      private var var_2547:String = "";
      
      private var var_2546:String = "";
      
      private var var_2545:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1183 = param1.readInteger();
         this.var_2071 = param1.readInteger();
         this.var_2547 = param1.readString();
         this.var_2202 = param1.readInteger();
         this.var_2425 = param1.readInteger();
         this.var_2424 = param1.readInteger();
         this.var_2548 = param1.readInteger();
         this.var_2545 = param1.readInteger();
         this.var_2546 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1183;
      }
      
      public function get points() : int
      {
         return this.var_2202;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2425;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2424;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2548;
      }
      
      public function get badgeId() : int
      {
         return this.var_2071;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2547;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2546;
      }
      
      public function get achievementID() : int
      {
         return this.var_2545;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
