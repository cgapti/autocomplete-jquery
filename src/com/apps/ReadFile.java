package com.apps;

import java.io.BufferedWriter;
import java.io.FileWriter;



public class ReadFile {

	/**
	 * @param args
	 */
	public static void main(String[] args)throws Exception {
		// TODO Auto-generated method stub
		String path="D:\\rajeshWorkSpace\\Task1\\src\\com\\apps\\country.txt";
		/*BufferedReader in = new BufferedReader(new FileReader(path));
		String str=null;
		ArrayList<String> lines = new ArrayList<String>();
		while((str = in.readLine()) != null){
		    lines.add(str);
		}
		String[] linesArray = lines.toArray(new String[lines.size()]);
		System.out.println(lines);*/
		
		 FileWriter writer = new FileWriter("D://MyFile.txt", true);
         BufferedWriter bufferedWriter = new BufferedWriter(writer);

         bufferedWriter.write("aa");
         bufferedWriter.newLine();
         bufferedWriter.write("bb");
         bufferedWriter.newLine();

         bufferedWriter.close();
		
	}

}
