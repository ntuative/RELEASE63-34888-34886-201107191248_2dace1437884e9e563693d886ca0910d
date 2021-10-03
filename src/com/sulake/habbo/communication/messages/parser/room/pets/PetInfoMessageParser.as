package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1908:int;
      
      private var _name:String;
      
      private var var_1183:int;
      
      private var var_2600:int;
      
      private var var_2391:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_2603:int;
      
      private var var_2601:int;
      
      private var var_2604:int;
      
      private var var_2602:int;
      
      private var var_2392:int;
      
      private var _ownerName:String;
      
      private var var_518:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1908;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1183;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2600;
      }
      
      public function get experience() : int
      {
         return this.var_2391;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2603;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2601;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2604;
      }
      
      public function get respect() : int
      {
         return this.var_2602;
      }
      
      public function get ownerId() : int
      {
         return this.var_2392;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_518;
      }
      
      public function flush() : Boolean
      {
         this.var_1908 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1908 = param1.readInteger();
         this._name = param1.readString();
         this.var_1183 = param1.readInteger();
         this.var_2600 = param1.readInteger();
         this.var_2391 = param1.readInteger();
         this.var_2603 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2601 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2604 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2602 = param1.readInteger();
         this.var_2392 = param1.readInteger();
         this.var_518 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
