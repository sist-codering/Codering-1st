/*=======================
	- 게시판 페이징 처리
=======================*/

//check-!!!
//지금 같이 확인해보고자 하는 페이징 처리 기법은
//다양한 방법들 중 한가지(그나마 쉬운 것을 골라...)이다.
//학습을 마친 이후에.. 꼭 추가적으로 개념을 정리하고 
//확장시키고, 다른 방법들도 찾아보고 공부해야 할 것이다. 
package com.codering.util;

/**
 * <pre>
 * 웹 프로그래밍 게시판의 핵심 기능인 페이징을 처리한다.
 * 페이징의 종류는 매우 다양하며 여기서 구현한 방식은 아래의 예시로 대신 설명한다.
 * ex) [처음] [이전] 1 2 3 4 5 6 7 8 9 10 [다음] [끝]
 *     [처음] [이전] 11 [다음] [끝]
 * </pre>
 */
public class Pagination {
	/**
	 * <pre>
	 * 현재 페이지번호
	 * ex) 1 2 3, ..., 11
	 * </pre>
	 */
	private int curPageNo;

	/**
	 * <pre>
	 * 최대 페이지번호
	 * ex)   1건 =  1
	 *      11건 =  2
	 *      20건 =  2
	 *      21건 =  3
	 *     100건 = 10
	 *     101건 = 11
	 * </pre>
	 */
	private int maxPageNo;

	/**
	 * <pre>
	 * 페이지번호마다 출력할 총 게시물 수
	 * ex)  1
	 *      2
	 *      3
	 *      4
	 *      5
	 *      6
	 *      7
	 *      8
	 *      9
	 *     10
	 * </pre>
	 */
	private int totRowCntPerPage = 3;

	/**
	 * <pre>
	 * DB 조회할 ROWNUM의 시작 번호
	 * ex) 1, 11, 21, 31, 41, 51, 61, 71, 81, 91, 101
	 * </pre>
	 */
	private int rowNumStart = 1;

	/**
	 * <pre>
	 * DB 조회할 ROWNUM의 종료 번호
	 * ex) 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110
	 * </pre>
	 */
	private int rowNumEnd = 10;

	/**
	 * <pre>
	 * 총 페이지번호 개수
	 * ex) 11
	 * </pre>
	 */
	private int totPageNo = 10;

	/**
	 * <pre>
	 * 현재 페이지번호 그룹
	 * </pre>
	 */
	private int curPageNoGroup;

	/**
	 * <pre>
	 * 현재 페이지번호 그룹의 시작 페이지번호
	 * </pre>
	 */
	private int curPageNoGroupStart = 1;

	/**
	 * <pre>
	 * 현재 페이지번호 그룹의 종료 페이지번호
	 * </pre>
	 */
	private int curPageNoGroupEnd = 1;

	/**
	 * <pre>
	 * 이전 페이지번호
	 * </pre>
	 */
	private int prevPageNo;

	/**
	 * <pre>
	 * 다음 페이지번호
	 * </pre>
	 */
	private int nextPageNo;

	/**
	 * <pre>
	 * 페이징 처리 순서 
	 * 1. 현재 페이지 설정
	 * 2. 최대 페이지번호 설정
	 * 3. 페이지번호 그룹, 이전/다음 페이지번호 설정
	 * 4. DB 조회할 ROWNUM의 시작 번호
	 * 5. DB 조회할 ROWNUM의 종료 번호
	 * </pre>
	 */
	public Pagination(int curPageNo, int listCnt) {
		// 1. 현재 페이지 설정
		this.setCurPageNo(curPageNo);

		// 2. 최대 페이지번호
		this.setMaxPageNo(listCnt);

		// 3. 페이지번호 그룹, 이전/다음 페이지번호 설정
		this.setGroupsAndBothSidesPageNo(curPageNo);

		// 4. DB 조회할 ROWNUM의 시작 번호
		this.setRowNumStart(curPageNo);

		// 5. DB 조회할 ROWNUM의 종료 번호
		this.setRowNumEnd(curPageNo);
	}

	/**
	 * 1. 현재 페이지 설정
	 * 
	 * @param curPageNo
	 */
	public void setCurPageNo(int curPageNo) {
		this.curPageNo = curPageNo;
	}

	/**
	 * 2. 최대 페이지번호 설정 ex) listCnt가 101건인 경우, 1~11까지 출력됨.
	 * 
	 * @param listCnt
	 */
	public void setMaxPageNo(int listCnt) {
		this.maxPageNo = (int) Math.ceil(listCnt * 1.0 / this.totRowCntPerPage);
	}

	/**
	 * 3. 페이지번호 그룹, 이전/다음 페이지번호 설정 (1) 현재 페이지번호 그룹 (2) 현재 페이지번호 그룹의 시작 페이지번호 (3) 현재
	 * 페이지번호 그룹의 종료 페이지번호 (4) 이전 페이지번호 (5) 다음 페이지번호
	 * 
	 * @param curPageNo
	 */
	public void setGroupsAndBothSidesPageNo(int curPageNo) {
		this.curPageNoGroup = (int) (curPageNo - 1) / this.totPageNo + 1;

		this.curPageNoGroupStart = (this.curPageNoGroup - 1) * this.totPageNo + 1;
		this.curPageNoGroupEnd = this.curPageNoGroup * this.totPageNo;
		if (this.curPageNoGroupEnd > this.maxPageNo) {
			this.curPageNoGroupEnd = this.maxPageNo;
		}

		this.prevPageNo = curPageNo - 1 == 0 ? 1 : curPageNo - 1;
		this.nextPageNo = curPageNo == this.maxPageNo ? curPageNo : curPageNo + 1;
	}

	public int getRowNumStart() {
		return rowNumStart;
	}

	/**
	 * 4. DB 조회할 ROWNUM의 시작 번호
	 * 
	 * @param curPageNo
	 */
	public void setRowNumStart(int curPageNo) {
		this.rowNumStart = (curPageNo - 1) * this.totRowCntPerPage + 1;
	}

	public int getRowNumEnd() {
		return rowNumEnd;
	}

	/**
	 * 5. DB 조회할 ROWNUM의 종료 번호
	 * 
	 * @param curPageNo
	 */
	public void setRowNumEnd(int curPageNo) 
	{
		this.rowNumEnd = curPageNo * this.totRowCntPerPage;
	}

	/**
	 * 6. 클라이언트에서 출력할 HTML
	 * 
	 * @param pageNo
	 * @param text
	 * @param style
	 * @return result
	 */
	private String makePagingString(int pageNo, String text, String style) 
	{
		// TODO CSS 변경 영역1
		String result = "<a href='#' class='board' onclick='getPaging(" + pageNo + ");' " + style + ">" + text + "</a>";
		return result;
	}

	/**
	 * 7. 클라이언트에서 최종 출력할 HTML
	 * 
	 * @return result
	 */
	public String pagingHTML() 
	{
		// TODO CSS 변경 영역2
		String result = "";
		String style = "";

		result += makePagingString(1, "START", style) + " ";

		result += makePagingString(this.prevPageNo, "PREV", style) + " ";

		for (int i = this.curPageNoGroupStart; i <= this.curPageNoGroupEnd; i++) {
			if (this.curPageNo == i) {
				style = "style='font-weight :bold;'";
			} else
			{
				style = "";
			}

			result += makePagingString(i, "" + i, style) + " ";
		}

		style = "";

		result += makePagingString(this.nextPageNo, "NEXT", style) + " ";

		result += makePagingString(this.maxPageNo, "END", style);

		return result;
	}

}