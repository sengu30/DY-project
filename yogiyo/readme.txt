2022/Dec/01 : a01_header_nav , a01_footer 생성해서 헤더와 푸터에 include로 변환
2022/Dec/06 : a01_header_nav_loc_category 생성
		처음에 만들었던 CustomerLogin에서 서블릿이랑 페이지 요소를 나누어서 CustomerLogin2, CustomerLogin3으로 만듬.
		CustomerLogin3에서 로그인 성공하면 세션 키 "ison"에 CustomerDao.Logon2 할당
2022/Dec/09 : 
	CustomerDao.selectlogin 메소드 수정(리턴형식 Customer)
	CustomerLogin3.jsp에서 메소드selectlogin에 아이디,비밀번호를 전달해서 리턴값이 null이면 로그인 실패, null이 아니면 세션으로 (키: logonUser) Customer객체 전달
	CustomerMain.jsp에서 세션(logonUser)이 있으면 로그온 상태, 없으면 로그오프 상태로 여김
	