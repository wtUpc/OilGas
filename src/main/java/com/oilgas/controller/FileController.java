package com.oilgas.controller;

import com.oilgas.service.storage.StorageFileNotFoundException;
import com.oilgas.service.storage.StorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/file")
public class FileController {

    private final StorageService storageService;

    @Autowired
    public FileController(StorageService storageService) {
        this.storageService = storageService;
    }

    @GetMapping("/upload")//文件上传
    public ModelAndView upload() {
        ModelAndView result = new ModelAndView("file/upload");
        return result;
    }

    @GetMapping("/")
    public String listUploadedFiles(Model model) throws IOException {

        model.addAttribute("files", storageService
                .loadAll()
                .map(path ->
                        MvcUriComponentsBuilder
                                .fromMethodName(FileController.class, "serveFile", path.getFileName().toString())
                                .build().toString())
                .collect(Collectors.toList()));

        return "upload";
    }

    @GetMapping("/files/{filename:.+}")
    @ResponseBody
    public ResponseEntity<Resource> serveFile(@PathVariable String filename) throws UnsupportedEncodingException {

        Resource file = storageService.loadAsResource(filename);
        return ResponseEntity
                .ok()
                .contentType(MediaType.parseMediaType("application/msword"))
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename="+ URLEncoder.encode(filename, "UTF-8"))
                .body(file);
    }

    @PostMapping("/")
    public String handleFileUpload(@RequestParam("file") MultipartFile file,
                                   RedirectAttributes redirectAttributes) {

        storageService.store(file);
        redirectAttributes.addFlashAttribute("message",
                "You successfully uploaded " + file.getOriginalFilename() + "!");

        return "redirect:/upload";
    }

    @ExceptionHandler(StorageFileNotFoundException.class)
    public ResponseEntity handleStorageFileNotFound(StorageFileNotFoundException exc) {
        return ResponseEntity.notFound().build();
    }

}
