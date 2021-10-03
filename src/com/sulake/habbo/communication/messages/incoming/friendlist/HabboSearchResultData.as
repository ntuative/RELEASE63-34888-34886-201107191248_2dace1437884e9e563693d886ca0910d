package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2623:int;
      
      private var var_1989:String;
      
      private var var_2721:String;
      
      private var var_2952:Boolean;
      
      private var var_2955:Boolean;
      
      private var var_2954:int;
      
      private var var_2720:String;
      
      private var var_2953:String;
      
      private var var_1988:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2623 = param1.readInteger();
         this.var_1989 = param1.readString();
         this.var_2721 = param1.readString();
         this.var_2952 = param1.readBoolean();
         this.var_2955 = param1.readBoolean();
         param1.readString();
         this.var_2954 = param1.readInteger();
         this.var_2720 = param1.readString();
         this.var_2953 = param1.readString();
         this.var_1988 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2623;
      }
      
      public function get avatarName() : String
      {
         return this.var_1989;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2721;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2952;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2955;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2954;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2720;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2953;
      }
      
      public function get realName() : String
      {
         return this.var_1988;
      }
   }
}
