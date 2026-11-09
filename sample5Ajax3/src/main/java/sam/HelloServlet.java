package sam;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

public class HelloServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("HelloServlet doGet");
		
		// 수신데이터
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println("id:" + id);
		System.out.println("pw:" + pw);
		
		// Database 접속
		
		// 송신데이터
		// client 에 전송
		JSONObject jobj = new JSONObject();
		
		// 1. String
		String message = "안녕하세요";
	//	jobj.put("message", message);
				
		// 2. object(dto)
	//	HumanDto dto = new HumanDto("홍길동", 24, 172.1);
	//	jobj.put("human", dto);
		
		// 3. list
		List<HumanDto> list = new ArrayList<HumanDto>();
		list.add(new HumanDto("홍길동", 24, 172.1));
		list.add(new HumanDto("성춘향", 15, 157.2));
	//	jobj.put("list", list);
		
		// 4. map
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("message", message);
		map.put("list", list);
		jobj.put("map", map);
		
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(jobj);		
	}
	
}




