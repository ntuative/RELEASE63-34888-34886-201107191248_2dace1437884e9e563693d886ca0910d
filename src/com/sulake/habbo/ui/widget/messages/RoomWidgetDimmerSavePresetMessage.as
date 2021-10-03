package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_962:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2400:int;
      
      private var var_2398:int;
      
      private var _color:uint;
      
      private var var_1381:int;
      
      private var var_2399:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_962);
         this.var_2400 = param1;
         this.var_2398 = param2;
         this._color = param3;
         this.var_1381 = param4;
         this.var_2399 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2400;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2398;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1381;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2399;
      }
   }
}
