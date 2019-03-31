package cn.gan.controller;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/file")
public class FileController {

    @RequestMapping("")
    public String goFileJsp() {
        return "fileUpload";
    }

    //文件上传一：UUID仅改变文件名
    @RequestMapping("/fileUpload")
    public String fileUpload(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request) {
        if (multipartFile != null && !multipartFile.isEmpty()) {
            // 获得原始文件名
            String fileName = multipartFile.getOriginalFilename();
            System.out.println("原始文件名:" + fileName);
            // 新文件名,也可用以下方式计算
            String newFileName = UUID.randomUUID() + fileName;
//        String newFileName="";
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
//        newFileName = sdf.format(new Date());
//
//        Random r = new Random();
//
//        for(int i =0 ;i<3;i++){
//            newFileName=newFileName+r.nextInt(10);
//        }
            // 获得项目的路径（本地磁盘的路径）
            ServletContext sc = request.getSession().getServletContext();
            // 上传位置,设定文件保存的目录
            String path = sc.getRealPath("/img") + "\\";
            File f = new File(path);
            if (!f.exists()) {
                f.mkdirs();
            }
            //用流来读取，也可以用下面简单的方法,一般都用下面这个springMVC自带的方法，速度快，这里用这种方法只是看下原理
            // multipartFile.transferTo(newFile);
            try {
                FileOutputStream fos = new FileOutputStream(path + newFileName);
                InputStream in = multipartFile.getInputStream();
                int b = 0;
                while ((b = in.read()) != -1) {
                    fos.write(b);
                }
                fos.close();
                in.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println(path);
            System.out.println("上传图片到:" + path + newFileName);
            request.setAttribute("newFilePath", newFileName);
            // 保存文件地址，用于JSP页面回显
        }
        return "fileUpload";
    }

    //文件上传：目录打散型
    @RequestMapping("/fileUpload1")
    public String fileUpload1(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request) throws IOException {
        if (multipartFile != null && !multipartFile.isEmpty()) {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSS");
            String res = sdf.format(new Date());
            // uploads文件夹位置
            String rootPath = request.getSession().getServletContext().getRealPath("resource/uploads/");
            // 原始名称
            String originalFileName = multipartFile.getOriginalFilename();
            //取文件扩展名
            String suffix = originalFileName.substring(originalFileName.lastIndexOf("."));
            System.out.println("文件扩展名是" + suffix);
            // 新文件名
            String newFileName = "sliver" + res + suffix;
            // 创建年月文件夹
            Calendar date = Calendar.getInstance();
            File dateDirs = new File(date.get(Calendar.YEAR) + File.separator + (date.get(Calendar.MONTH) + 1));
            // 新文件
            File newFile = new File(rootPath + File.separator + dateDirs + File.separator + newFileName);
            // 判断目标文件所在目录是否存在
            if (!newFile.getParentFile().exists()) {
                // 如果目标文件所在的目录不存在，则创建父目录
                newFile.getParentFile().mkdirs();
            }
            System.out.println(newFile);
            // 将内存中的数据写入磁盘
            multipartFile.transferTo(newFile);
            // 完整的url
            String fileUrl = date.get(Calendar.YEAR) + "/" + (date.get(Calendar.MONTH) + 1) + "/" + newFileName;
            System.out.println("fileUrl:" + fileUrl);
            request.setAttribute("newFileUrl", "resource/uploads/" + fileUrl);
        }
        return "fileUpload";
    }

    /**
     * 多文件上传，前端的name一定要写一样的，才能封装进MultipartFile[]
     *
     * @param multipartFiles
     * @param request
     * @return
     * @throws IOException
     */
    @RequestMapping("/fileUpload2")
    public String fileUpload2(@RequestParam("file") MultipartFile[] multipartFiles, HttpServletRequest request) throws IOException {
        //list存多个文件名
        List<String> fileNames = new ArrayList<>();
        //判断是不是有文件
        if (multipartFiles != null && multipartFiles.length > 0) {

            for (MultipartFile multipartFile : multipartFiles) {
                //判断文件是否为空
                if (multipartFile != null && !multipartFile.isEmpty()) {
                    //1，获取原始文件名
                    String originalFilename = multipartFile.getOriginalFilename();
                    //2,截取源文件的文件名前缀,不带后缀
                    String fileNamePrefix = originalFilename.substring(0, originalFilename.lastIndexOf("."));
                    //3,加工处理文件名，原文件加上时间戳
                    String newFileNamePrefix = fileNamePrefix + System.currentTimeMillis();
                    //4,得到新文件名
                    String newFileName = newFileNamePrefix + originalFilename.substring(originalFilename.lastIndexOf("."));
                    //5,构建文件对象
                    // 获得项目的路径
                    ServletContext sc = request.getSession().getServletContext();
                    String path = sc.getRealPath("/img") + "\\";
                    File f = new File(path);
                    if (!f.exists()) {
                        f.mkdirs();
                    }

                    File file = new File(path + newFileName);
                    multipartFile.transferTo(file);
                    fileNames.add("img/" + newFileName);
                }
            }
            request.setAttribute("fileNames", fileNames);
        }
        return "fileUpload";
    }

    //跳转到下载界面
    @RequestMapping("goFiledown")
    public  String goFiledown(){
        return "filedownload";
    }

    /**
     * 注意文件下载不能ajax
     * ajax请求无法响应下载功能因为response原因，
     * 一般请求浏览器是会处理服务器输出的response，
     * 例如生成png、文件下载等,然而ajax请求只是个“字符型”的请求，
     * 即请求的内容是以文本类型存放的。文件的下载是以二进制形式进行的，
     * 虽然可以读取到返回的response，但只是读取而已，是无法执行的，说白点就是js无法调用到浏览器的下载处理机制和程序。
     * @param request
     * @param response
     * @param image
     * @return
     * @throws IOException
     */
    //文件下载
    @RequestMapping("/download")
    public String download(HttpServletRequest request, HttpServletResponse response, String image) throws IOException {
        System.out.println(image);
        //获取对应文件的路径
        String path = request.getSession().getServletContext().getRealPath("/img") + "\\" + image;
        System.out.println(path);
        //将文件读取到输入流
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(path)));

        //设置文件转码
        image = URLEncoder.encode(image,"UTF-8");

        //解决中文显示乱码
        response.addHeader("Content-Disposition", "attachment;filename=" + image);

        //设置响应的类型
        response.setContentType("multipart/form-data");

        //将对应文件读取出来
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
        int len = 0;
        while((len = bis.read()) != -1){
            out.write(len);
            out.flush();
        }
        out.close();
        return "filedownload";
    }
    //第二种方式实现下载
    //利用springmvc提供的ResponseEntity类型,使用它可以很方便地定义返回的HttpHeaders和HttpStatus。
    @RequestMapping("/download1")
    public ResponseEntity<byte[]> export(String image, HttpServletRequest request) throws IOException {
        String filePath = request.getSession().getServletContext().getRealPath("/img") + "\\" + image;
        HttpHeaders headers = new HttpHeaders();
        File file = new File(filePath);

        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        headers.setContentDispositionFormData("attachment", image);
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),
                headers, HttpStatus.CREATED);
    }

}
