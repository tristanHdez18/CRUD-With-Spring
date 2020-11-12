package Controller;

import Config.Connection;
import InsertingData.InsertData;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author tristan
 */
@Controller
public class Control {
    Connection con = new Connection();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.ConnectionToDatabase());
    ModelAndView modelAV = new ModelAndView();
    int id;
    List data;
    
    @RequestMapping("index.htm")
    public ModelAndView listAll(){
        String selectMysql = "select * from clients";
        data= this.jdbcTemplate.queryForList(selectMysql);
        modelAV.addObject("list", data);
        modelAV.setViewName("index");
        return modelAV;
    }
    
    @RequestMapping(value ="insert.htm", method = RequestMethod.GET)
    public ModelAndView add(){
        modelAV.addObject(new InsertData());
        modelAV.setViewName("insert");
        return modelAV;
    }
    
    @RequestMapping(value ="insert.htm", method = RequestMethod.POST)
    public ModelAndView add(InsertData insert){
        String insertMysql = "insert into clients(name,lastName,Country) values(?,?,?)";
        this.jdbcTemplate.update(insertMysql,insert.getName(), insert.getLastName(), insert.getCountry());
        return new ModelAndView("redirect:/index.htm");
    }
    
    @RequestMapping(value="edit.htm", method = RequestMethod.GET)
    public ModelAndView modificate(HttpServletRequest request){
        id = Integer.parseInt(request.getParameter("id"));
        String showMysql = "select * from clients where IdClient="+id;
        data = this.jdbcTemplate.queryForList(showMysql);
        modelAV.addObject("list",data);
        modelAV.setViewName("edit");
        return modelAV;
    }
    
    @RequestMapping(value="edit.htm", method = RequestMethod.POST)
    public ModelAndView modificate(InsertData insert){
        String modificateMysql= "update clients set name=?,lastName=?,Country=? where IdClient="+id;
        this.jdbcTemplate.update(modificateMysql,insert.getName(), insert.getLastName(), insert.getCountry());
        return new ModelAndView("redirect:/index.htm");
    }
    
    @RequestMapping(value="delete.htm")
    public ModelAndView delete(HttpServletRequest request){
        id = Integer.parseInt(request.getParameter("id"));
        String deleteMysql="delete from clients where IdClient="+id;
        this.jdbcTemplate.update(deleteMysql);
        return new ModelAndView("redirect:/index.htm");
    }
}
