package module.controllers;
//download the below jars and add to build path..
//mail.jar and activation.jar

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

//To execute this program..Some changes in the gmail...
//step1: Click on profile icon in gmail...
//step2: Click on manage accounts..
//stp3: choose Security-->Enable the Access to less secure apps was turned ON
public class DonMail {
    public static void main(String[] args) {
    	MailService ms=new MailService();
    	//2020-08-15
		//15-08-2020
		//String fm = "2019-08-15";
		
		//String from=fm.substring(8,10)+"-"+fm.substring(5,7)+"-"+fm.substring(2,4);
		//System.out.println(from);
    	//ms.sendMail(//);
    }
    public  void DoneMail(String demail, String uname)
    {
    	
        final String username = "thepictureperf@gmail.com";//Your mail id
        final String password = "Free-wifi7";//Your password
        Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true"); 
        Session session = Session.getInstance(prop,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }});
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("thepictureperf@gmail.com"));//Your mail id ..sender..
            message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(demail));//Receiver mail id
            message.setSubject("Public Goods & Services");
            message.setText("Dear " +uname +","
            		+"\n"
            		+ "\nThank you for being awsome!" +"\n"
                    + "We appreciate you conntecting PUBLIC GOODS & SERVICES." +"\n"
                    + "You're donation form has been submitted successfully. We will get back to you soon!"
                    + "\n"
                    + "\n \n Stay Home Stay Safe");
            Transport.send(message);
            System.out.println("Mail Sent successfully.....");
        } catch (MessagingException e) {
            e.printStackTrace();
            System.out.println("@@@@@@@@@Unable to send the mail check your Internet Connection....");
            e.getMessage();
           
        }
    }
    
}