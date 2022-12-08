<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
<%!
	// 선언문
	// 1)

	// 메소드
	// input: n(숫자) output: 합계 결과

	// Scanner scan = new Scanner(System.in);
	// private int N = scan.nextInt();
	
	public int getSum(int n) {
		int sum = 0;
		// this.N = n; 
		for (int i = 1; i <= n; i++) {
			sum += i;
		}
		return sum;
		// return "<b>1부터 " + N + "까지의 합은 " + sum + "입니다.</b>";
	}
 
%>

<h2>1부터 50까지의 합은 <%= getSum(50) %></h2>

<%
	int[] scores = {80, 90, 100, 95, 80};
	double average = 0;
	int sum = 0;
	for (int i = 0; i < scores.length; i++) {
		sum += scores[i];
	}
	average = (double)sum / scores.length;

%>

<h2>평균 점수는 <%= average %> 입니다.</h2>

<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	Iterator<String> iter = scoreList.iterator();
	int score = 0;
	while(iter.hasNext()) {
		String answer = iter.next();
		if (answer.equals("O")) {
			score += 10;
		}
	}
%>

<h2>채점 결과는 <%=score %>점 입니다.</h2>

<%
	String birthDay = "20010820";
	int year = Integer.valueOf(birthDay.substring(0, 4));
	year = 2022 - year;
	// out.print(year);
%>


<%="<h2><br>" + birthDay + "의 나이는 " + year + "세 입니다.</h2>" %>
</body>
</html>