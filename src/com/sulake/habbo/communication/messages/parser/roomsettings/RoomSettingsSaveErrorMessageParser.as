package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2285:int = 1;
      
      public static const const_2162:int = 2;
      
      public static const const_2256:int = 3;
      
      public static const const_2128:int = 4;
      
      public static const const_1858:int = 5;
      
      public static const const_2147:int = 6;
      
      public static const const_1915:int = 7;
      
      public static const const_1899:int = 8;
      
      public static const const_2215:int = 9;
      
      public static const const_1870:int = 10;
      
      public static const const_1749:int = 11;
      
      public static const const_1988:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1815:int;
      
      private var var_624:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1815 = param1.readInteger();
         this.var_624 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1815;
      }
      
      public function get info() : String
      {
         return this.var_624;
      }
   }
}
