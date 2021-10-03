package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.ui.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _type:int;
      
      private var var_1938:int;
      
      private var var_1139:int = 1;
      
      private var var_1701:int;
      
      private var var_532:Boolean = false;
      
      private var _isSelected:Boolean = false;
      
      private var var_2204:Boolean = false;
      
      private var var_748:BitmapData;
      
      private var var_3038:Date;
      
      public function Effect()
      {
         super();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get duration() : int
      {
         return this.var_1938;
      }
      
      public function get effectsInInventory() : int
      {
         return this.var_1139;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_532;
      }
      
      public function get isInUse() : Boolean
      {
         return this.var_2204;
      }
      
      public function get isSelected() : Boolean
      {
         return this._isSelected;
      }
      
      public function get icon() : BitmapData
      {
         return this.var_748;
      }
      
      public function get iconImage() : BitmapData
      {
         return this.var_748;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(this.var_532)
         {
            _loc1_ = this.var_1701 - (new Date().valueOf() - this.var_3038.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return this.var_1701;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function set duration(param1:int) : void
      {
         this.var_1938 = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         this.var_1701 = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         this._isSelected = param1;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         this.var_2204 = param1;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         this.var_748 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         this.var_1139 = param1;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !this.var_532)
         {
            this.var_3038 = new Date();
         }
         this.var_532 = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --this.var_1139;
         if(this.var_1139 < 0)
         {
            this.var_1139 = 0;
         }
         this.var_1701 = this.var_1938;
         this.var_532 = false;
         this.var_2204 = false;
      }
   }
}
