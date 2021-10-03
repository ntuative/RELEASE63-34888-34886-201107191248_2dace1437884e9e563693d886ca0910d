package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var _id:int;
      
      private var var_2517:String = "";
      
      private var var_957:String;
      
      private var var_1572:Boolean;
      
      private var var_2376:Boolean = true;
      
      private var var_2518:int;
      
      private var var_2516:String;
      
      public function Breed(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         this.var_2518 = parseInt(param1.@pattern);
         this.var_957 = String(param1.@gender);
         this.var_1572 = Boolean(parseInt(param1.@colorable));
         this.var_2517 = String(param1.@localizationKey);
         if(param1.@sellable && param1.@sellable == "0")
         {
            this.var_2376 = false;
         }
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get gender() : String
      {
         return this.var_957;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1572;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2376;
      }
      
      public function get patternId() : int
      {
         return this.var_2518;
      }
      
      public function get avatarFigureString() : String
      {
         return this.var_2516;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         this.var_2516 = param1;
      }
      
      public function get localizationKey() : String
      {
         return this.var_2517;
      }
   }
}
