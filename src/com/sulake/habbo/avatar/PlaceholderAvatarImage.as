package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_779:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1145)
         {
            _structure = null;
            _assets = null;
            var_277 = null;
            var_313 = null;
            _figure = null;
            var_604 = null;
            var_361 = null;
            if(!var_1416 && var_47)
            {
               var_47.dispose();
            }
            var_47 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_815 = null;
            var_1145 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_779[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_779[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_404:
               switch(_loc3_)
               {
                  case AvatarAction.const_984:
                  case AvatarAction.const_596:
                  case AvatarAction.const_436:
                  case AvatarAction.const_826:
                  case AvatarAction.const_427:
                  case AvatarAction.const_969:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_377:
            case AvatarAction.const_142:
            case AvatarAction.const_287:
            case AvatarAction.const_1031:
            case AvatarAction.const_933:
            case AvatarAction.const_983:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
