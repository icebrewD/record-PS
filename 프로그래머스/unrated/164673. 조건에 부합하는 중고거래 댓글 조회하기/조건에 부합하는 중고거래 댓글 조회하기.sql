-- 코드를 입력하세요
SELECT B.TITLE, B.BOARD_ID, R.REPLY_ID, R.WRITER_ID, R.CONTENTS, DATE_FORMAT(R.CREATED_DATE, "%Y-%m-%d") AS CREATED_DATE
FROM USED_GOODS_REPLY AS R JOIN USED_GOODS_BOARD AS B USING (BOARD_ID)
WHERE B.CREATED_DATE BETWEEN "2022-10-01" AND "2022-10-31"
ORDER BY R.CREATED_DATE, B.TITLE;