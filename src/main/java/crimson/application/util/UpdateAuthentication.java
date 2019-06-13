package crimson.application.util;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Service;

import crimson.application.model.User;

@Service
public class UpdateAuthentication {
	
	@Autowired
	private AuthenticationManager authenticationManager;
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	public void doLogin(User user, HttpServletRequest request) {
		try {
			// Must be called from request filtered by Spring Security, otherwise
			// SecurityContextHolder is not updated
			UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(user.getEmail(),null);
			token.setDetails(new WebAuthenticationDetails(request));
			Authentication authentication = authenticationManager.authenticate(token);
			SecurityContextHolder.getContext().setAuthentication(authentication);
		} catch (Exception e) {
			e.printStackTrace();
			SecurityContextHolder.getContext().setAuthentication(null);
			
		}

	}

}
