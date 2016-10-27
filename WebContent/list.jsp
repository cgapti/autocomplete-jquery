<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*" %>

   <%
   try{
     //String s[]=null;

     /* Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
     Statement st=con.createStatement();
     ResultSet rs = st.executeQuery("select * from countries");

       /* List li = new ArrayList();

       while(rs.next())
       {
           li.add(rs.getString(1));
       } 

       String[] str = new String[li.size()];
       Iterator it = li.iterator();

       int i = 0;
       while(it.hasNext())
       {
           String p = (String)it.next();
           str[i] = p;
           i++;
       } */
       /* String[] str={"Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra",
    	        "Angola", "Anguilla", "Antarctica", "Antigua and Barbuda", "Argentina",
    	        "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan",
    	        "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium",
    	        "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia",
    	        "Bosnia and Herzegovina", "Botswana", "Bouvet Island", "Brazil", "British Indian Ocean Territory",
    	        "British Virgin Islands", "Brunei", "Bulgaria", "Burkina Faso", "Burundi",
    	        "Cote d'Ivoire", "Cambodia", "Cameroon", "Canada", "Cape Verde",
    	        "Cayman Islands", "Central African Republic", "Chad", "Chile", "China",
    	        "Christmas Island", "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo",
    	        "Cook Islands", "Costa Rica", "Croatia", "Cuba", "Cyprus", "Czech Republic",
    	        "Democratic Republic of the Congo", "Denmark", "Djibouti", "Dominica", "Dominican Republic",
    	        "East Timor", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea",
    	        "Estonia", "Ethiopia", "Faeroe Islands", "Falkland Islands", "Fiji", "Finland",
    	        "Former Yugoslav Republic of Macedonia", "France", "French Guiana", "French Polynesia",
    	        "French Southern Territories", "Gabon", "Georgia", "Germany", "Ghana", "Gibraltar",
    	        "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guinea", "Guinea-Bissau",
    	        "Guyana", "Haiti", "Heard Island and McDonald Islands", "Honduras", "Hong Kong", "Hungary",
    	        "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "Israel", "Italy", "Jamaica",
    	        "Japan", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Kuwait", "Kyrgyzstan", "Laos",
    	        "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg",
    	        "Macau", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands",
    	        "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia", "Moldova",
    	        "Monaco", "Mongolia", "Montserrat", "Morocco", "Mozambique", "Myanmar", "Namibia",
    	        "Nauru", "Nepal", "Netherlands", "Netherlands Antilles", "New Caledonia", "New Zealand",
    	        "Nicaragua", "Niger", "Nigeria", "Niue", "Norfolk Island", "North Korea", "Northern Marianas",
    	        "Norway", "Oman", "Pakistan", "Palau", "Panama", "Papua New Guinea", "Paraguay", "Peru",
    	        "Philippines", "Pitcairn Islands", "Poland", "Portugal", "Puerto Rico", "Qatar",
    	        "Reunion", "Romania", "Russia", "Rwanda", "Sqo Tome and Principe", "Saint Helena",
    	        "Saint Kitts and Nevis", "Saint Lucia", "Saint Pierre and Miquelon",
    	        "Saint Vincent and the Grenadines", "Samoa", "San Marino", "Saudi Arabia", "Senegal",
    	        "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands",
    	        "Somalia", "South Africa", "South Georgia and the South Sandwich Islands", "South Korea",
    	        "Spain", "Sri Lanka", "Sudan", "Suriname", "Svalbard and Jan Mayen", "Swaziland", "Sweden",
    	        "Switzerland", "Syria", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "The Bahamas",
    	        "The Gambia", "Togo", "Tokelau", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey",
    	        "Turkmenistan", "Turks and Caicos Islands", "Tuvalu", "Virgin Islands", "Uganda",
    	        "Ukraine", "United Arab Emirates", "United Kingdom",
    	        "United States", "United States Minor Outlying Islands", "Uruguay", "Uzbekistan",
    	        "Vanuatu", "Vatican City", "Venezuela", "Vietnam", "Wallis and Futuna", "Western Sahara",
    	        "Yemen", "Yugoslavia", "Zambia", "Zimbabwe"}; */

   
	   String path="D:\\rajeshWorkSpace\\Task1\\src\\com\\apps\\country.txt";
		BufferedReader in = new BufferedReader(new FileReader(path));
		String str=null;
		ArrayList<String> lines = new ArrayList<String>();
		while((str = in.readLine()) != null){
		    lines.add(str);
		}
		in.close();
		//System.out.println(lines);
		String[] str1 = lines.toArray(new String[lines.size()]);
    	        
    	        //jQuery related start
       String query = request.getParameter("q");
        String button=request.getParameter("Submit");
        String country=request.getParameter("country");
        
        System.out.println("b::"+button+"\t"+query+"\t"+country);

       int cnt=1;
       for(int j=0;j<str1.length;j++)
       {
    	   if(query!=null){
    	   //System.out.println(str1[j]);
    	   if(str1[j].toUpperCase().startsWith(query.toUpperCase()))
           {
        	   
              out.print(str1[j]+"\n");
              if(cnt>=10)// 5=How many results have to show while we are typing(auto suggestions)
              break;
              cnt++;
            }  
    	   }
    	   
       }
       if(button != null){
    	   System.out.println("else::");
    	   FileWriter writer = new FileWriter(path, true);
           BufferedWriter bufferedWriter = new BufferedWriter(writer);

           bufferedWriter.write(country);
           bufferedWriter.newLine();          
           bufferedWriter.close();
           %>
           <jsp:include page="index.html"></jsp:include>
           <%
           out.println("<h3 style='color:red'>successfully added<h3>");
       }
       
     
    


}
catch(Exception e){
e.printStackTrace();
}
%>