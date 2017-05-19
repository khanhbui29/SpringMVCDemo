package demo.web;

import org.junit.Test;
import org.springframework.test.web.servlet.MockMvc;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.*;

import com.kb.demo.web.IndexController;

public class HomeControllerTest {
	@Test
	  public void testHomePage() throws Exception {
	    IndexController controller = new IndexController();
	    MockMvc mockMvc = standaloneSetup(controller).build();
	    mockMvc.perform(get("/"))
	           .andExpect(view().name("home"));
	  }


}
