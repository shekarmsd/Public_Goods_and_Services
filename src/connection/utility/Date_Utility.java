package connection.utility;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Date_Utility {
	public String dateFormatSRId() {
    	Date date = new Date();
    	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
    	return dateFormat.format(date);
    }
}
