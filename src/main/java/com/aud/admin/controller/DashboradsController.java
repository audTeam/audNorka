package com.aud.admin.controller;

import java.io.File;
import java.text.DecimalFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.aud.mapper.LeaveMessageMapper;
import com.aud.mapper.LogMapper;
import com.aud.pojo.LeaveMessage;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/admin/dashborad")
public class DashboradsController {
    @Autowired
	private LeaveMessageMapper leaveMessageMapper;
    @Autowired
	private LogMapper logMapper;

    @ModelAttribute
    public void setCurrentModule(ModelMap model) {  
       model.addAttribute("currentModule", "7");
    }

    public String doubleFormat(double d){   
        DecimalFormat df = new DecimalFormat("0.##");   
        return df.format(d);                   
    }

	@RequestMapping("")
	public String show(ModelMap model,
			@RequestParam(value="pageNo", required=false, defaultValue="1") Integer pageNo,
			@RequestParam(value="pageSize", required=false, defaultValue="10") Integer pageSize){
		
		PageHelper.startPage(pageNo, pageSize);
	    List<LeaveMessage> list = this.leaveMessageMapper.all();
	    PageInfo<LeaveMessage> page = new PageInfo<LeaveMessage>(list);
	    model.addAttribute("pages", page);

        File[] roots = File.listRoots();
        int constm = 1024 * 1024 * 1024 ;
        Long total = 0L;
        Long remain = 0L;
        for (File _file : roots) {
            remain+= _file.getFreeSpace();
            total+=_file.getTotalSpace();
        }
        model.addAttribute("space", remain/constm+"/"+total/constm);
        model.addAttribute("leaveMessageCount", leaveMessageMapper.count());
        model.addAttribute("logsCount", logMapper.count());
		return "admin/dashborad/show";
	}

	@RequestMapping("/leaveMessages/{id}/delete")
	public String deleteMessage(@PathVariable("id") int id){
		this.leaveMessageMapper.deleteByPrimaryKey(id);
		return "redirect:/admin/dashborad";
	}
}
