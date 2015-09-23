<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contents Update</title>
</head>
<body>
<form action="contentsupdateimpl.bk" method="post" enctype="multipart/form-data">


<h3>${contentsupdate.category_id}</h3>
<input type="hidden" name="contents_id" value="${contentsupdate.contents_id }">
<input type="hidden" name="user_id" value="${contentsupdate.user_id}">
<h3>카테고리 : </h3>
<div class="form-group">
          <select name="category_id" class="form-control input-lg">
             <option value="develop">자기개발</option>
             <option value="travel">여행</option>
             <option value="food">음식</option>
             <option value="sports">스포츠</option>
             <option value="etc">기타</option>
          </select>
       </div>


<h3>제목 : <input type="text" name="contents_title" value="${contentsupdate.contents_title}"></h3>
<h3>IMAGE1 : <input type="file" name="new_contents_image1"></h3>
<input type="hidden" name="new_contents_image1" value="${contentsupdate.contents_image1}">
<h3>IMAGE2 : <input type="file" name="new_contents_image2"></h3>
<input type="hidden" name="new_contents_image2" value="${contentsupdate.contents_image2}">
<h3>IMAGE3 : <input type="file" name="new_contents_image3"></h3>
<input type="hidden" name="new_contents_image3" value="${contentsupdate.contents_image3}">
<h3>내용 : <input type="text" name="contents_content" value="${contentsupdate.contents_content}"></h3>
<input type="submit" value="수정">
</form>
</body>
</html>