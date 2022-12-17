<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
    
    Calendar now = Calendar.getInstance();
    int year = now.get(Calendar.YEAR);
    int month = now.get(Calendar.MONTH)+1;
    
    String _year = request.getParameter("year");
    String _month = request.getParameter("month");
    
    if(_year != null)
        year = Integer.parseInt(_year);
    
    if(_month != null)
        month = Integer.parseInt(_month);
    
    now.set(year, month-1, 1);    //출력할 년도, 월로 설정
    
    year = now.get(Calendar.YEAR);    //변화된 년, 월
    month = now.get(Calendar.MONTH) + 1;
    
    int end = now.getActualMaximum(Calendar.DAY_OF_MONTH);    //해당월의 마지막 날짜
    int w = now.get(Calendar.DAY_OF_WEEK);    //1~7(일~토)
    System.out.println(w);
    System.out.println(end);
    System.out.println(_year);
    System.out.println(month);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP 만년달력</title>
        <style type="text/css">
            *{padding: 0px; margin: 0px;}  /* 브라우저별 기본 여백 차이가 있기에 작성한다. */
            body{font-size: 9pt;}
            td{font-size: 9pt;}
            a{cusor: pointer; color: #000000; text-decoration: none; font-size: 9pt; line-height: 150%;}
            a:HOVER, a:ACTIVE{font-size: 9pt; color: #F28011; text-decoration: underline;}
        </style>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body>
        <br/>&nbsp;<br/>
        
        <center>
            
            <table class="table text-center">
                <tr>
                    <td align="center" bgcolor="#e6e4e6"><font color="red">일</font></td>
                    <td align="center" bgcolor="#e6e4e6">월</td>
                    <td align="center" bgcolor="#e6e4e6">화</td>
                    <td align="center" bgcolor="#e6e4e6">수</td>
                    <td align="center" bgcolor="#e6e4e6">목</td>
                    <td align="center" bgcolor="#e6e4e6">금</td>
                    <td align="center" bgcolor="#e6e4e6"><font color="blue">토</font></td>
                </tr>
                <%
                    int newLine = 0;
                    //1일이 어느 요일에서 시작하느냐에 따른 빈칸 삽입
                    out.println("<tr height='25'>");
                    for(int i=1; i<w; i++)
                    {
                        out.println("<td bgcolor='#ffffff'>&nbsp;</td>");
                        newLine++;
                    }
                    
                    String fc, bg;
                    for(int i=1; i<=end; i++)
                    {
                        
                        fc = (newLine == 0)?"red":(newLine==6?"blue":"#000000");
                        bg = "#ffffff";
                        out.println("<td align='center' bgcolor=" + bg + "><font color=" + fc + ">"
                                + i + "</font></td>");
                        newLine++;
                        if(newLine == 7 && i != end)
                        {
                            out.println("</tr>");
                            out.println("<tr height='25'>");
                            newLine = 0;
                        }
                    }
                    
                    while(newLine>0 && newLine<7)
                    {
                        out.println("<td bgcolor='ffffff'>&nbsp;</td>");
                        newLine++;    
                    }
                    out.println("</tr>");
                    System.out.println(newLine);
                %>
            </table>
        </center>
    </body>
</html>