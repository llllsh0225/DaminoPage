package com.damino.web.user.userlevel;

public interface UserLevelDAO {
	public int getUsersOrderCnt(String userid); // ���� 3�������� �ֹ� �Ǽ��� ī��Ʈ
	public int getUsersPayCnt(String userid); // ���� 1�� 1�Ϻ��� ��������� �ֹ����� ī��Ʈ
}
