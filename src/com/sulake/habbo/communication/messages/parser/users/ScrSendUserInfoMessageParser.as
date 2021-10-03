package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2170:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1293:int = 3;
       
      
      private var var_1048:String;
      
      private var var_2914:int;
      
      private var var_2916:int;
      
      private var var_2910:int;
      
      private var var_2913:int;
      
      private var var_2918:Boolean;
      
      private var var_2678:Boolean;
      
      private var var_2919:int;
      
      private var var_2917:int;
      
      private var var_2915:Boolean;
      
      private var var_2911:int;
      
      private var var_2912:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1048 = param1.readString();
         this.var_2914 = param1.readInteger();
         this.var_2916 = param1.readInteger();
         this.var_2910 = param1.readInteger();
         this.var_2913 = param1.readInteger();
         this.var_2918 = param1.readBoolean();
         this.var_2678 = param1.readBoolean();
         this.var_2919 = param1.readInteger();
         this.var_2917 = param1.readInteger();
         this.var_2915 = param1.readBoolean();
         this.var_2911 = param1.readInteger();
         this.var_2912 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1048;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2914;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2916;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2910;
      }
      
      public function get responseType() : int
      {
         return this.var_2913;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2918;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2678;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2919;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2917;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2915;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2911;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2912;
      }
   }
}
