package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_1080:String;
      
      private var var_2768:String;
      
      private var var_1988:String;
      
      private var var_2765:int;
      
      private var var_2766:String;
      
      private var var_2769:int;
      
      private var var_2770:int;
      
      private var var_2764:int;
      
      private var var_1341:int;
      
      private var var_888:int;
      
      private var var_2767:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_1080 = param1.readString();
         this.var_2768 = param1.readString();
         this.var_1988 = param1.readString();
         this.var_2765 = param1.readInteger();
         this.var_2766 = param1.readString();
         this.var_2769 = param1.readInteger();
         this.var_2770 = param1.readInteger();
         this.var_2764 = param1.readInteger();
         this.var_1341 = param1.readInteger();
         this.var_888 = param1.readInteger();
         this.var_2767 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_1080;
      }
      
      public function get customData() : String
      {
         return this.var_2768;
      }
      
      public function get realName() : String
      {
         return this.var_1988;
      }
      
      public function get tickets() : int
      {
         return this.var_2765;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2766;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2769;
      }
      
      public function get directMail() : int
      {
         return this.var_2770;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2764;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1341;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_888;
      }
      
      public function get identityId() : int
      {
         return this.var_2767;
      }
   }
}
