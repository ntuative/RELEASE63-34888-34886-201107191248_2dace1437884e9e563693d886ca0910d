package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_381:int = 1;
      
      public static const const_236:int = 2;
      
      public static const const_300:int = 3;
      
      public static const const_355:int = 4;
      
      public static const const_255:int = 5;
      
      public static const const_399:int = 1;
      
      public static const const_884:int = 2;
      
      public static const const_796:int = 3;
      
      public static const const_847:int = 4;
      
      public static const const_312:int = 5;
      
      public static const const_1010:int = 6;
      
      public static const const_974:int = 7;
      
      public static const const_400:int = 8;
      
      public static const const_535:int = 9;
      
      public static const const_2325:int = 10;
      
      public static const const_891:int = 11;
      
      public static const const_551:int = 12;
       
      
      private var var_436:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_436 = new Array();
         this.var_436.push(new Tab(this._navigator,const_381,const_551,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_563));
         this.var_436.push(new Tab(this._navigator,const_236,const_399,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_563));
         this.var_436.push(new Tab(this._navigator,const_355,const_891,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1290));
         this.var_436.push(new Tab(this._navigator,const_300,const_312,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_563));
         this.var_436.push(new Tab(this._navigator,const_255,const_400,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1321));
         this.setSelectedTab(const_381);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_355;
      }
      
      public function get tabs() : Array
      {
         return this.var_436;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_436)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_436)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_436)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
