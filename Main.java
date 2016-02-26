package com.ttcna.testdev;
import java.io.File;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;


public class Main {

    public static void main(String[] args) throws Exception {
	// write your code here
	if (args.length != 3) {
		System.out.println("Usage: java XSLTransformer inputfile.xml inputfile.xsl outputfile");
		System.exit(1);
	}

	TransformerFactory tf = TransformerFactory.newInstance();
	tf.setAttribute("indent-number", 2);
	Transformer t = tf.newTransformer(new StreamSource(new File(args[1])));
	t.setOutputProperty(OutputKeys.INDENT, "yes");
	t.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
	t.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "2");

	t.transform(new StreamSource(new File(args[0])), new StreamResult(new File(args[2])));
  }
}
