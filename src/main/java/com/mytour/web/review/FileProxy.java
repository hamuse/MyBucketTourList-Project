package com.mytour.web.review;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.function.BiFunction;



import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.mytour.web.sharing.Path;


@Component
public class FileProxy   {
   
   public List<String> fileupload(MultipartFile[] uploadFile)  {
      String uploadFolder =Path.UPLOAD_PATH.toString();
      System.out.println(uploadFolder);
      File uploadPath = makeDir(uploadFolder, getFolder());
      List<String> names= new ArrayList<String>();
      if(uploadPath.exists() == false) {
         uploadPath.mkdirs();
      }
      final String s = getFolder();
      for(MultipartFile m : uploadFile) {
         String fname = m.getOriginalFilename();
         String extension = fname.substring(fname.lastIndexOf(".")+1);
         fname = fname.substring(fname.lastIndexOf("\\")+1, fname.lastIndexOf("."));
         String fnames=fname+"-"+UUID.randomUUID().toString();
         File savedFile = makeFile(uploadPath, fnames+"."+extension);
         names.add(Path.DOWNLOAD_PATH.toString()+File.separator+fnames+"."+extension);
         try {
            m.transferTo(savedFile);
         } catch (Exception e) {
            e.printStackTrace();
         } 
      }
   return names; 
   }
   
   public String getFolder() {
      return "review";
   }
   public File makeDir(String t, String u) {
      BiFunction<String,String, File> f = File::new;
      return f.apply(t, u);
   }
   public File makeFile(File t, String u) {
      BiFunction<File,String, File> f = File::new;
      return f.apply(t, u);
   }
}