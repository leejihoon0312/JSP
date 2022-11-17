<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="org.apache.commons.fileupload.DiskFileUpload" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<%
		String path = "C:\\Users\\이지훈\\Desktop\\JSP\\src\\main\\webapp\\InClass\\ch07\\resource";
		//MultipartRequest multi = new MultipartRequest(request, path, 5 * 1024 * 1024, "utf-8",	new DefaultFileRenamePolicy());
		DiskFileUpload diskFileUpload = new DiskFileUpload();

		List upload = diskFileUpload.parseRequest(request);
		Iterator iterator = upload.iterator();

		if (iterator.hasNext()) {
			FileItem fileItem = (FileItem) iterator.next();
			String  fieldName = fileItem.getFieldName();
			String  fileName = fileItem.getName();
			String contentType = fileItem.getContentType();
			long size = fileItem.getSize();
			File file = new File(path +"/"+ fileName);
			fileItem.write(file);
			out.print("요청 파라미터 이름: " + fieldName +"<br>" );
			out.print("저장 파일 이름: " +  fileName +"<br>");
			out.print("파일 콘텐츠 타입: " + contentType +"<br>");
			out.print("파일 크기: " + size +"<br>");
		}


	%>
</body>
</html>