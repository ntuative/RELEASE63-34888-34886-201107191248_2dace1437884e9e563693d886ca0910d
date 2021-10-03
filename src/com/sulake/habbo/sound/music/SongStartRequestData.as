package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1672:int;
      
      private var var_2156:Number;
      
      private var var_2932:Number;
      
      private var var_2930:int;
      
      private var var_2931:Number;
      
      private var var_2933:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1672 = param1;
         this.var_2156 = param2;
         this.var_2932 = param3;
         this.var_2931 = param4;
         this.var_2933 = param5;
         this.var_2930 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1672;
      }
      
      public function get startPos() : Number
      {
         if(this.var_2156 < 0)
         {
            return 0;
         }
         return this.var_2156 + (getTimer() - this.var_2930) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2932;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2931;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2933;
      }
   }
}
