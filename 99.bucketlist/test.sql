insert into CATEGORY values('01', ' ')
insert into CATEGORY values('02', ' ')
insert into CATEGORY values('03', ' ')
insert into CATEGORY values('04', ' ')
insert into CATEGORY values('05', ' ')


1. USERS
��ȸ�� ����
INSERT INTO USERS VALUES('id01', 'pw01', 'kim', 'kim@naver.com', 'kim.jpg', sysdate, '0')

�ܳ� ���� ����
UPDATE USERS SET USER_PASSWORD=��pw02��, USERS_NAME=��jo��, USER_EMAIL=��s8197@na��, USER_IAMGE=��son.jpg��
WHERE USER_ID = ��id01��

��ȸ�� ����Ʈ
SELECT USER_ID FROM USERS

��ȸ�� �˻�
SELECT * FROM USERS WHERE USER_ID = 'id01'

������ ���� : ���ڱ����ֱ� (����)
UPDATE USERS SET AMIND_CHECK = '1'
WHERE USER_ID = ��id01��

��ȸ�� ���� (����)
DELETE FROM USERS WHERE USER_ID = ��id01��



2. CONTENTS
�������� ���
INSERT INTO CONTENTS VALUES(CONTENTS_ID.NEXTVAL, 'id01', 'sports', 'hiking', 'hiking.jpg', null, null,null, sysdate, null, null,null, sysdate, '1', '1')

�������� ����
UPDATE CONTENTS SET 
CATEGORY_ID = 'sports',
CONTENTS_TITLE = 'riding',
CONTENTS_IMAGE1 = 'riding.jpg', CONTENTS_IMAGE2 = null, CONTENTS_IMAGE3 = null,
CONTENTS_CONTENT = null,
CONTENTS_GOALDATE  = sysdate,
CONTENTS_LOC = null,
LAT = null, LON = null,
CONTENTS_REGDATE = sysdate,
CONTENTS_PRIVATE = '0',
CONTENTS_COM  = '0'
WHERE CONTENTS_ID= 2 AND USER_ID = 'id02'

�������� ����
DELETE FROM CONTENTS WHERE CONTENTS_ID = 1 AND USER_ID = 'id01'

�ܸ�� ������ ����Ʈ
SELECT * FROM CONTENTS

��ī�װ?�� ������ ����Ʈ
SELECT * FROM CONTENTS WHERE CATEGORY_ID = 'sports'

�������� �˻� (����)
SELECT * FROM CONTENTS WHERE CONTENTS_TITLE = 'soccer'

�������� �˻� (�۾���)
SELECT * FROM CONTENTS WHERE USER_ID = 'id01'

�ܳ� ������ ����Ʈ (�̿Ϸ�)
SELECT * FROM CONTENTS WHERE USER_ID = 'id01' AND CONTENTS_COM = '0'

�ܳ� ������ ����Ʈ (�Ϸ�)
SELECT * FROM CONTENTS WHERE USER_ID = 'id01' AND CONTENTS_COM = '1'

�������� �󼼺���
SELECT * FROM CONTENTS WHERE CONTENTS_ID = 1



3. COMMENTS
�ܴ�� ���
INSERT INTO COMMENTS VALUES(COMMENTS_ID.NEXTVAL, 1, 'id01', 'nice', sysdate, 'nice.jpg')

�ܴ�� ����
DELETE FROM COMMENTS WHERE COMMENTS_ID = 2 AND USER_ID = 'id03'

�ܴ�� ����Ʈ
SELECT * FROM COMMENTS WHERE CONTENTS_ID = 1



4. BOARD
�ܰԽ��ǵ��
INSERT INTO BOARD VALUES(BOARD_ID.NEXTVAL, 'id01', '�Խù�1 ���', null, sysdate, 0, 1)

�ܰԽ��Ǽ���
UPDATE BOARD SET 
BOARD_TITLE = '������',
BOARD_CONTENT = '�����۳���'
WHERE BOARD_ID = 2 AND USER_ID = 'id02'

�ܴ�ۼ���
UPDATE BOARD SET 
BOARD_TITLE = '�������'
WHERE BOARD_ID = 4 AND BOARD_CHECK = 1 AND USER_ID = 'id01'

�ܰԽ��ǻ���
DELETE FROM BOARD WHERE BOARD_ID = 1 AND USER_ID = 'id01'

�ܰԽù� �󼼺���
SELECT * FROM BOARD WHERE BOARD_ID = 1 OR BOARD_CHECK = 1

�ܰԽ��� ����Ʈ
SELECT * FROM BOARD WHERE BOARD_CHECK IS NULL

�ܰԽ��� �˻� (Ÿ��Ʋ)
SELECT * FROM BOARD WHERE BOARD_TITLE = '����' AND BOARD_CHECK IS NULL

�ܰԽ��� �˻� (�۾���)
SELECT * FROM BOARD WHERE USER_ID = 'id02' AND BOARD_CHECK IS NULL



5. FOLLOW
���ȷο� ���
INSERT INTO FOLLOW VALUES(FOLLOW_ID.NEXTVAL, 'id01', 'id04')

���ȷο� ����Ʈ
SELECT * FROM FOLLOW WHERE USER_ID='id01' 

���ȷο� ����
DELETE FROM FOLLOW WHERE USER_ID='id01' AND LIKE_ID ='id02'

���ȷο� �˻�
SELECT * FROM FOLLOW WHERE USER_ID='id01' AND LIKE_ID ='id02'



6. FAVORITE
�����ã�� ���
INSERT INTO FAVORITE VALUES(FAVORITE_ID.NEXTVAL, 3, 'id02')

�����ã�� ����
DELETE FROM FAVORITE WHERE USER_ID = 'id01' AND CONTENTS_ID = 2

�����ã�� ����Ʈ
SELECT * FROM FAVORITE WHERE USER_ID='id01'


7. �׿�
��ɻ� ��ƺ���
SELECT * FROM CONTENTS WHERE CATEGORY_ID='01'


select * from users
