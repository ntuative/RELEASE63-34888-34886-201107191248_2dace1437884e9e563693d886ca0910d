package com.sulake.habbo.catalog.recycler
{
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   
   public class PrizeContainer extends PrizeGridItem
   {
       
      
      private var var_2753:String;
      
      private var var_2021:int;
      
      private var var_2754:int;
      
      private var _furnitureData:IFurnitureData;
      
      private var var_3092:PrizeGridItem;
      
      public function PrizeContainer(param1:String, param2:int, param3:IFurnitureData, param4:int)
      {
         super();
         this.var_2753 = param1;
         this.var_2021 = param2;
         this._furnitureData = param3;
         this.var_2754 = param4;
      }
      
      public function setIcon(param1:IRoomEngine) : void
      {
         if(param1 == null || this._furnitureData == null)
         {
            return;
         }
         initProductIcon(param1,this._furnitureData.type,this.var_2021);
      }
      
      public function get productItemType() : String
      {
         return this.var_2753;
      }
      
      public function get productItemTypeId() : int
      {
         return this.var_2021;
      }
      
      public function get gridItem() : PrizeGridItem
      {
         return this.var_3092;
      }
      
      public function get oddsLevelId() : int
      {
         return this.var_2754;
      }
      
      public function get title() : String
      {
         if(this._furnitureData == null)
         {
            return "";
         }
         return this._furnitureData.title;
      }
   }
}
