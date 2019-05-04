package crimson.application.util;

public interface Email {
	public boolean send(String to,String content,String contextPath);
}
