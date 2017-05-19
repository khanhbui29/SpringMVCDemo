package demo.web;
import org.junit.Test;
import org.springframework.test.web.servlet.MockMvc;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.*;

import com.kb.demo.web.SignUpController;

public class SignUpControllerTest {
	@Test
	  public void testHomePage() throws Exception {
	    SignUpController controller = new SignUpController();
	    MockMvc mockMvc = standaloneSetup(controller).build();
	    mockMvc.perform(get("/signup"))
	           .andExpect(view().name("signupForm"));
	  }
	
	@Test
	  public void shouldProcessRegistration() throws Exception {
		SignUpController controller = new SignUpController();
		MockMvc mockMvc = standaloneSetup(controller).build();

	    mockMvc.perform(post("/signup")
	           .param("userName", "Jackie")
	           .param("dob", "11/11/1984"))
	           
	           .andExpect(redirectedUrl("/question"));
	}


}