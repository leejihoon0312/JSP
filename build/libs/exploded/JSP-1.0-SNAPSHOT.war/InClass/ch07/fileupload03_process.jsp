<%@page contentType="text/html; charset=utf-8"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<%
		String fileUploadPath = "C:\\Users\\이지훈\\Desktop\\JSP\\src\\main\\webapp\\InClass\\ch07\\resource";

		DiskFileUpload upload = new DiskFileUpload();

		List items = upload.parseRequest(request);

		Iterator params = items.iterator();

		while (params.hasNext()) {
			FileItem fileItem = (FileItem) params.next();
			if (!fileItem.isFormField()) {
				String fileName = fileItem.getName();
				System.out.println("fileName1 = " + fileName);
				int i = fileName.lastIndexOf("\\") + 1;
				System.out.println("i = " + i);
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				System.out.println("fileName2 = " + fileName);
				File file = new File(fileUploadPath + "/" + fileName);
				System.out.println("file = " + file);
				fileItem.write(file);
			}
		}
	%>
</body>
</html>