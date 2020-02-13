package com.mytour.web.sharing;

import java.io.File;

public enum Path {
   UPLOAD_PATH,DOWNLOAD_PATH;
   @Override
   public String toString() {
      String result = "";
      switch(this){
      case UPLOAD_PATH :

         result = File.separator+"usr"+File.separator+"local"+File.separator+"tomcat9"+File.separator+
         "webapps"+File.separator+"ROOT"+File.separator+"resources"+File.separator+"img"+File.separator;
         break;
      case DOWNLOAD_PATH :

         result = File.separator+"resources"+File.separator+"img"+File.separator+"review";
         break;
      
      }
      return result;
   }
}