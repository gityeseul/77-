<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ȸ������</title>
        <!-- Bootstrap -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (��Ʈ��Ʈ���� �ڹٽ�ũ��Ʈ �÷������� ���� �ʿ���) -->
        <script src="http://code.jquery.com/jquery.js"></script>
        <!-- ��� ������ �÷������� �����ϰų� (�Ʒ�) �ʿ��� ������ ���ϵ��� �����ϼ��� -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <!-- Respond.js ���� IE8 ���� ������ ����� Ȱ��ȭ�ϼ��� (https://github.com/scottjehl/Respond) -->
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    </head>
    <body>
    <img src="images/icons/welcome2.PNG" alt="IMG-LOGO">
        <div class="container"><!-- �¿����� ���� Ȯ�� -->
            <div class="row">
                <p></p>
                <div class="col-md-12">

                </div>
            </div>
            <!--// ��� ���� �κ� -->
            <!-- ���â -->
            <div class="modal fade" id="defaultModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
                            <h4 class="modal-title">�˸�</h4>
                        </div>
                        <div class="modal-body">
                            <p class="modal-contents"></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">�ݱ�</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
            <!--// ���â -->
            <hr/>
            <!-- ���� ���� �κ� -->
                
 
 
            <form class="form-horizontal" role="form" method="post" action="javascript:alert( 'success!' );">
                <div class="form-group">
                    <label for="provision" class="col-lg-2 control-label">ȸ�����Ծ��</label>
                    <div class="col-lg-10" id="provision">
                        <textarea class="form-control" rows="8" style="resize:none">�������
�� 1�� ��Ģ

�� 1 ��(����)

�� ����� ���������������� ������Ʈ(���� "����������������")�� �����ϴ� ��� ����(���� "����")�� �̿����� �� ����, ȸ���� ������������������ �Ǹ�, �ǹ�, å�ӻ��װ� ��Ÿ �ʿ��� ������ �������� �������� �մϴ�.

�� 2 ��(����� ȿ�°� ����)

1. ������������������ �̿��ڰ� �� ��� ���뿡 �����ϴ� ���, ������������������ ���� ���� ���� �� ȸ���� ���� ��� ������ �� ����� �켱������ ����˴ϴ�.
2. ������������������ ����� ������ ���, �������� �� ���������� ����Ͽ� �������� �Բ� ������������������ �ʱ�ȭ�鿡 �� ������ 7�� �������� ���� ���ϱ��� �����մϴ�. ��, ȸ���� �Ҹ��ϰ� ��������� �����ϴ� ��쿡�� �ּ��� 30�� �̻��� ���� �����Ⱓ�� �ΰ� �����մϴ�. �� ��� ������������������ ���� �� ����� ���� �� ������ ��Ȯ�ϰ� ���Ͽ� ȸ���� �˱� ������ ǥ���մϴ�.
3. ����� ����� ���������������� Ȩ�������� �����ϰų� e-mail�� ���� ȸ������ �����ϸ�, ����� ��Ģ�� ��õ� ������ �� ȿ���� �߻��˴ϴ�. ȸ���� ����� ����� �������� �ʴ� ���, ȸ���� ������ ȸ������� ���(ȸ��Ż��)�� �� ������, ����� ����� ȿ�� �߻��Ϸκ��� 7�� �̳��� �ź��ǻ縦 ǥ������ �ƴ��ϰ� ���񽺸� ��� ����� ���� ��� ���濡 ���� ���Ƿ� ���ֵ˴ϴ�.

�� 3 ��(��� �� ��Ģ)

�� ����� ��õ��� ���� ������ ������ű⺻��, ������Ż����, ���������������ȸ���Ǳ���, ������� ��������, ���α׷���ȣ�� �� ��Ÿ ���� ������ ������ ���մϴ�.

�� 4 ��(����� ����)

�� ������� ����ϴ� ����� ���Ǵ� ������ �����ϴ�.
1. �̿��� : �� ����� ���� ������������������ �����ϴ� ���񽺸� �޴� ��
2. ���� : ������������������ �����ϴ� ��û�� ��Ŀ� �ش� ������ �����ϰ�, �� ����� �����Ͽ� ���� �̿����� �Ϸ��Ű�� ����
3. ȸ�� : ���������������п� ���� ������ �����Ͽ� ȸ�� ����� �� �ڷμ� ������������������ �����ϴ� ���񽺸� �̿��� �� �ִ� ��.
4. ����(ID) : ȸ���� �ĺ��� ȸ���� ���� �̿��� ���Ͽ� ȸ���� �����ϰ� ���������������п��� �ο��ϴ� ���ڿ� ������ ����
5. ��й�ȣ : ȸ���� ������ ��ġ�ϴ����� Ȯ���ϰ� ��Ż��� �ڽ��� ��к�ȣ�� ���Ͽ� ȸ�� �ڽ��� ������ ���ڿ� ������ ����
6. Ż�� : ȸ���� �̿����� �����Ű�� ����
7. �� ������� �������� ���� ���� �������񽺿� ���� ���� ��� �� �̿�������� �����մϴ�.


�� 2�� ���� ���� �� �̿�

�� 5 �� (�̿����� ����)

1. �̿����� �̿��ڰ� �¶������� ���������������п��� �����ϴ� ������ ���Խ�û ��Ŀ��� �䱸�ϴ� ������ ����Ͽ� ������ �Ϸ��ϴ� ������ �����˴ϴ�.
2. ������������������ ���� �� ȣ�� �ش��ϴ� �̿��࿡ ���Ͽ��� ������ ����� �� �ֽ��ϴ�.
   1) �ٸ� ����� ���Ǹ� ����Ͽ� ��û�Ͽ��� ��
   2) �̿��� ��û���� ������ ������ �����Ͽ��ų� ��û�Ͽ��� ��
   3) �ٸ� ����� ���������������� ���� �̿��� �����ϰų� �� ������ �����ϴ� ���� ������ �Ͽ��� ��
   4) ������������������ �̿��Ͽ� ���ɰ� �� ����� �����ϴ� ������ �ϴ� ���
   5) ��Ÿ ������������������ ���� �̿��û����� �̺� �Ǿ��� ��

�� 6 �� (ȸ������ ��뿡 ���� ����)

1. ȸ���� ���������� ����������ǰ���������ȣ�����ѹ������� ���� ��ȣ�˴ϴ�.
2. ������������������ ȸ�� ������ ������ ���� ���, ����, ��ȣ�˴ϴ�.
   1) ���������� ��� : ���������������д� ���� ������ �����ؼ� ������ ȸ���� �Ż������� ������ �³� ���� ��3�ڿ��� ����, �������� �ʽ� �ϴ�. ��, ������ű⺻�� �� ������ ������ ���� ��������� �䱸�� �ִ� ���, ���˿� ���� ������� ������ �ְų� ���������������ȸ�� ��û�� �ִ� ��� �Ǵ� ��Ÿ ������ɿ��� ���� ������ ���� ��û�� �ִ� ���, �̿��� ������ ���������� ������ ��쿡�� �׷� ���� �ʽ��ϴ�.
   2) ���������� ���� : ȸ���� ���������� ��ȣ �� ������ ���Ͽ� ������ ���������������� ���÷� ȸ���� ���������� ����/������ �� �ֽ��ϴ�.
   3) ���������� ��ȣ : ȸ���� ���������� ���� ���θ��� ����/����/���� �� �� ������, �̴� �������� ȸ���� ������ ��й�ȣ�� ���� �����ǰ� �ֽ��ϴ�. ���� Ÿ�ο��� ������ ������ ��й�ȣ�� �˷��־�� �ȵǸ�, �۾� ����ÿ��� �ݵ�� �α׾ƿ��� �ֽñ� �ٶ��ϴ�.
3. ȸ���� �� ����� ���� �̿��û�� �ϴ� ����, ������������������ ��û���� ����� ȸ�������� ����, �̿��ϴ� �Ϳ� �����ϴ� ������ ���� �˴ϴ�.

�� 7 �� (������� ���� ����)

1. �̿��ڴ� ���������������� ���� ���� ������ �Ϸ��ϴ� �������� ������ �Է��� ������ ����� ������ å���� ������, ȸ���� ���ǳ� �ߴ��� �Ǽ��� ȸ���� ������ ��й�ȣ�� ����Ͽ� �߻��� ���ؿ� ���� å���� ȸ�� ���ο��� �ֽ��ϴ�.
2. ������ ��й�ȣ�� ���� ��� ������ å���� ȸ������ ������, ȸ���� �����̳� ��й�ȣ�� �����ϰ� ���Ǿ��ٴ� ����� �߰��� ��쿡�� ��� ���������������п� �Ű��Ͽ��� �մϴ�. �Ű� ���� �������� ���� ��� å���� ȸ�� ���ο��� �ֽ��ϴ�.
3. �̿��ڴ� ���������������� ������ ��� ����ø��� ��Ȯ�� ������ �����ؾ� �ϸ�, ��Ȯ�� �������� �ƴ������ν� ��3�ڰ� �̿��ڿ� ���� ������ �̿��ϰ� �Ǵ� ���� ����� ���� �߻��ϴ� ���� �� �սǿ� ���Ͽ� ������������������ å���� �δ����� �ƴ��մϴ�.

�� 8 �� (������ ����)

1. �� ����Ʈ�� ���ϰ� ���񽺸� �̿��Ͽ� ����ϴ� �����̳� ���񽺸� ���Ͽ� ���� �ڷ�� ���� ���ؿ� ���Ͽ� å���� ���� ������, ȸ���� �� ���񽺿� ������ ����, �ڷ�, ����� �ŷڵ�, ��Ȯ�� �� ���뿡 ���Ͽ��� å���� ���� �ʽ��ϴ�.
2. �� ����Ʈ�� ���� �̿�� �����Ͽ� �����ڿ��� �߻��� ���� �� �������� ����,���ǿ� ���� ���ؿ� ���Ͽ� å���� �δ����� �ƴ��մϴ�.

�� 9 �� (�̿�Ⱓ �� �ڰ��� ���� �� ���)

1. ���������������� ȸ���̿�Ⱓ�� ���������տ� ���� �Ұ��׷��� �����ϰ� ȸ����û���� Ż������� �մϴ�.
2. ������������������ �̿��ڰ� �� ����� ��õ� ������ �����ϴ� �ൿ�� �� ���, �̿��ڰ��� �Ͻ������� �����ϰ� 30�� �̳��� �����ϵ��� �̿��ڿ��� �䱸�� �� ������, ���� ������ ������ 2ȸ �̻� �ݺ��� ��쿡 30�ϰ��� �Ҹ��ȸ�� �ο��� �� �̿��ڰ��� ��ǽ�ų �� �ֽ��ϴ�.
3. ���������������� ȸ���� ��û �� 12�����̻� ��ð� �̿����� ���� ȸ���� �޸���̵�� �з��Ͽ�, �ڰ� ���� �� ����� �����մϴ�.

�� 10 �� (�������, ���� ��)

1. ȸ���� �������� ���� �ʱ�ȭ���� ���������� �Ǵ� �������� �޴� ���� ���Ͽ� �̿��� ���� ��û�� �� �� ������, ������������������ ���ù� ���� ���ϴ� �ٿ� ���� �̸� ��� ó���Ͽ��� �մϴ�.
2. ȸ���� ����� ������ ���, ���ù� �� ����������޹�ħ�� ���� ������������������ ȸ�������� �����ϴ� ��츦 �����ϰ�� ���� ��� ȸ���� ��� �����ʹ� �Ҹ�˴ϴ�.
3. ȸ���� ����� �����ϴ� ���, ȸ���� �ۼ��� �Խù� �� ��α� ��� ���� ���� ������ ��ϵ� �Խù� ��ü�� �����˴ϴ�. ��, Ÿ�ο� ���� ��ũ�� �Ǿ� ��Խõǰų�, ����Խ��ǿ� ��ϵ� �Խù� ���� �������� ������ ������ ���� �� Ż���Ͻñ� �ٶ��ϴ�.

�� 11 �� (�Խù��� ���۱�)

1. �̿��ڰ� �Խ��� �Խù��� ���۱��� �̿��ڰ� �����ϸ�, ���������������д� ���� ���� �̸� �Խ��� �� �ִ� �Ǹ��� �����ϴ�.
2. ������������������ ���� �� ȣ�� �ش��ϴ� �Խù��̳� �ڷḦ �������� ���� �����ϰų� �̵� �Ǵ� ��� �źθ� �� �� �ֽ��ϴ�.
   1) ������ ����� ����ǰų� ��� �Ǵ� �ҹ�, ����, �����ϴٰ� �ǴܵǴ� �Խù��� �Խ��� ���
   2) �ٸ� ȸ�� �Ǵ� �� 3�ڿ��� ���� ����� �ְų� ���� �ջ��Ű�� ������ ���
   3) �������� �� ��ǳ��ӿ� ���ݵǴ� ������ �����ϰų� ��ũ��Ű�� ���
   4) �ҹ����� �Ǵ� ��ŷ�� �����ϴ� ������ ���
   5) ������ �������� �ϴ� ������ ���
   6) ���˿� ��εȴٰ� ���������� �����Ǵ� ������ ���
   7) �ٸ� �̿��� �Ǵ� �� 3���� ���۱� �� ��Ÿ �Ǹ��� ħ���ϴ� ������ ���
   8) ���������������п��� ������ �Խù� ��Ģ�� ��߳��ų�, �Խ��� ���ݿ� �������� �ʴ� ���
   9) ��Ÿ ������ɿ� ����ȴٰ� �ǴܵǴ� ���
3. �̿����� �Խù��� Ÿ���� ���۱��� ħ�������ν� �߻��ϴ� ��, ������� å���� �������� �̿��ڰ� �δ��Ͽ��� �մϴ�.


�� 3�� �ǹ� �� å��


�� 12 �� (������������������ �ǹ�)

1. ������������������ ȸ���� ���� �Ż� ������ ������ �³����� Ÿ�ο��� ����, �������� �ʽ��ϴ�. ��, ������Ű��ù��� �� ������ɿ� ���Ͽ� ���� ������� ���� �䱸�� �ִ� ��쿡�� �׷����� �ƴ��մϴ�.
2. ������������������ ���ɰ� �� ����� �����ϰų� ��ǳ��ӿ� ���ϴ� ������ ���� ������, ������������������ ���񽺸� �����ϱ� ���� ��� �� �ǹ��� �ֽ��ϴ�.
3. ������������������ �̿����� ��å������ ���� ���� �̿� ��ֿ� ���Ͽ� å���� ���� �ʽ��ϴ�.

�� 13 �� (ȸ���� �ǹ�)

1. ȸ�� ���Խÿ� �䱸�Ǵ� ������ ��Ȯ�ϰ� �����Ͽ��� �մϴ�. ���� �̹� ������ ȸ���� ���� ������ ��Ȯ�� ������ �ǵ��� ����, �����Ͽ��� �ϸ�, ȸ���� �ڽ��� ���� �� ��й�ȣ�� ��3�ڿ��� �̿��ϰ� �ؼ��� �ȵ˴ϴ�.
2. ȸ���� ������������������ ���� �³����� ���񽺸� �̿��Ͽ� ��� ���������� �� �� ������, �� ����Ȱ���� ����� ���� ������������������ ���� å���� ���� �ʽ��ϴ�. ���� ȸ���� �̿� ���� ����Ȱ������ ������������������ ���ظ� ���� ��� ���ع���ǹ��� ����, ������������������ �ش� ȸ���� ���� ���� �̿����� �� ������ ������ ���� ���ع�� ���� û���� �� �ֽ��ϴ�.
3. ȸ���� ���������������� ���� �̿�� �����Ͽ� ���� �� ȣ�� ������ �Ͽ����� �ȵ˴ϴ�.
   1) ȸ������ ��û �Ǵ� ȸ������ ���� �� ���������� �����ϰų� �ٸ� ȸ���� ��й�ȣ�� ID�� �����Ͽ� ���� ����ϴ� ����
   2) ����, ����, �����, �������̰ų� Ÿ���� Privacy�� ħ���� �� �ִ� ������ ����, �Խ�, ����, ���ڿ��� �Ǵ� ��Ÿ�� ������� �����ϴ� ����
   3) ���������������� ���, ���� �Ǵ� �����ڸ� ��Ī�ϴ� ����
   4) ���񽺸� ���Ͽ� ���۵� ������ ��ó�� �����ϴ� ����
   5) ����, ��࿡ ���� �̿��� �� ���� ������ �Խ�, ����, ���ڿ��� �Ǵ� ��Ÿ�� ������� �����ϴ� ����
   6) ���� ��ŷ �� ��ǻ�͹��̷��� ����, ������Ʈ �Ǵ� �Խõ� ������ �Ϻκ� �Ǵ� ��ü�� ���Ƿ� �����ϴ� ����
   7) Ÿ���� Ư��, ��ǥ, �������, ���۱�, ��Ÿ ���������� ħ���ϴ� ������ �Խ�, ����, ���ڿ��� �Ǵ� ��Ÿ�� ������� �����ϴ� ����
   8) ������������������ ������ ���� �ƴ��� ����, ���˹�, ���Ը���, ����� ����, �Ƕ�̵� ���� ��Ÿ �ٸ� ������ ������ �Խ�, ����, ���ڿ��� �Ǵ� ��Ÿ�� ������� �����ϴ� ����
   9) �ٸ� ������� ���������� ����, ����, �����ϴ� ����
   10) ���������� �������� �ϰų� ��Ÿ ���������� ���õ� ����
   11) ������ ǳ��, ��Ÿ ��ȸ������ ���ϴ� ����
   12) Ÿ���� ���� �Ѽ��ϰų� ����ϴ� ����
   13) Ÿ���� �������� ���� �Ǹ��� ħ���ϴ� ����
   14) Ÿ���� �ǻ翡 ���Ͽ� ���� ���� �� ������ ������ ���������� �����ϴ� ����
   15) ������ �������� ��� ������ �ְų� �� ����� �ִ� ��ü�� ����
   17) �� ����� �����Ͽ� ��Ÿ ������������������ ���� ���� ���� �Ǵ� �̿� ������ �����ϴ� ����
   18) ��Ÿ ������ɿ� ����Ǵ� ����


�� 4�� ��Ÿ


�� 14 �� (�絵����)

ȸ���� ������ �̿����, ��Ÿ �̿��� �� ������ Ÿ�ο��� �絵, ������ �� �����ϴ�.

�� 15�� (��å����)

1. ������������������ ���� �̿�� �����Ͽ� �̿��ڿ��� �߻��� ���ؿ� ���Ͽ� ������������������ �ߴ��� ����, ���� �Ǵ� ���������� ���� �߻��� ���ظ� �����ϰ� �̿� ���Ͽ� å���� �δ����� ������, �̿��ڰ� �� ���񽺿� ������ ����, �ڷ�, ����� �ŷڵ�, ��Ȯ�� �� ���뿡 ���Ͽ��� å���� ���� �ʽ��ϴ�.
2. ������������������ ���� �̿�� �����Ͽ� �̿��ڿ��� �߻��� ���� �� �̿����� ����, �Ǽ��� ���� ���ؿ� ���Ͽ� å���� �δ����� �ƴ��մϴ�.
3. ������������������ �̿��ڰ� �Ǵ� �̿��ڿ� ��3�ڰ��� ���񽺸� �Ű��� �Ͽ� ��ǰ�ŷ� Ȥ�� ������ �ŷ� ��� �����Ͽ� ��� å�ӵ� �δ����� �ƴ��ϰ�, �̿��ڰ� ������ �̿�� �����Ͽ� ����ϴ� ���Ϳ� ���Ͽ� å���� �δ����� �ʽ��ϴ�.

�� 16 �� (���ǰ���)

���������������а� �̿��ڰ��� �߻��� ���� �̿뿡 ���� ���￡ ���Ͽ��� ���ѹα� ���� �����ϸ�, �� �������� ���� �Ҵ� �λ�Ҽ۹����� ���ҹ����� �����մϴ�.
�� Ģ 1. (������) �� ����� 2016�� 1�� 1�Ϻ��� ����˴ϴ�.
                        </textarea>
                        <div class="radio">
                            <label>
                                <input type="radio" id="provisionYn" name="provisionYn" value="Y" autofocus="autofocus" checked>
                                �����մϴ�.
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" id="provisionYn" name="provisionYn" value="N">
                                �������� �ʽ��ϴ�.
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="memberInfo" class="col-lg-2 control-label">����������޹�ħ</label>
                    <div class="col-lg-10" id="memberInfo">
                        <textarea class="form-control" rows="8" style="resize:none">���������� �׸� �� �������
��. ���������� ���� �� �̿� ����
�� ������������������ ������ ������ ���Ͽ� ���������� ó���մϴ�. ó���ϰ� �ִ� ���������� ������ ���� �̿��� �뵵�δ� �̿���� ������, �̿� ������ ����Ǵ� ��쿡�� �������� ��ȣ�� ��18���� ���� ������ ���Ǹ� �޴� �� �ʿ��� ��ġ�� ������ �����Դϴ�.
1. ���������������� ���� ������ ���� ȸ������
1) �������� �ٿ�ε�, ����API ��û �� Ȱ�� �� ���� ���� ������ ���� �����̿� ������ �������� ����������
   ó���մϴ�.

��. �����ϴ� ���������� �׸�
�� ���������������� ȸ������(�ʼ�): �̸�, �̸���(���̵�), ��й�ȣ

��. ���������� ���� �� �̿�Ⱓ
�� ������������������ ���ɿ� ���� �������� �������̿�Ⱓ �Ǵ� ������ü�κ��� ���������� ���� �ÿ� ���� ���� �������� �������̿�Ⱓ ������ ���������� ó���������մϴ�.
1. ���������������� ȸ������
- �����ٰ�: ������ü�� ����
- �����Ⱓ: ȸ�� Ż�� ��û ������(1�� ��� �� �絿��)
- �����ٰ�: ������ü�� ����

��. ���� �ź� �Ǹ� �� ���� �źο� ���� ������
�� ���������� ���� �� �̿뿡 ���� ���Ǹ� �ź��� �� ������, ���Ǹ� �ź��� ��� ȸ�� ������ ���ѵ˴ϴ�.
                        </textarea>
                        <div class="radio">
                            <label>
                                <input type="radio" id="memberInfoYn" name="memberInfoYn" value="Y" checked>
                                �����մϴ�.
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" id="memberInfoYn" name="memberInfoYn" value="N">
                                �������� �ʽ��ϴ�.
                            </label>
                        </div>
                    </div>
                </div>
                <div class="normalbold tb_ttl" id="id">
                    <label for="inputId" class="col-lg-2 control-label">���̵�</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control onlyAlphabetAndNumber" id="id" data-rule-required="true" placeholder="30���̳��� ���ĺ�, ������ھ�(_), ���ڸ� �Է� �����մϴ�." maxlength="30">
                    </div>
                </div>
                <div class="normalbold tb_ttl" id="password">
                    <label for="inputPassword" class="col-lg-2 control-label">�н�����</label>
                    <div class="col-lg-10">
                        <input type="password" class="form-control" id="password" name="excludeHangul" data-rule-required="true" placeholder="�н�����" maxlength="30">
                    </div>
                </div>
                <div class="normalbold tb_ttl" id="password2">
                    <label for="inputPasswordCheck" class="col-lg-2 control-label">�н����� Ȯ��</label>
                    <div class="col-lg-10">
                        <input type="password" class="form-control" id="password2" data-rule-required="true" placeholder="�н����� Ȯ��" maxlength="30">
                    </div>
                </div>
                <div class="normalbold tb_ttl" id="name">
                    <label for="inputName" class="col-lg-2 control-label">�̸�</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control onlyHangul" id="name" data-rule-required="true" placeholder="�ѱ۸� �Է� �����մϴ�." maxlength="15">
                    </div>
                </div>
                <div class="normalbold tb_ttl" id="tel">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">�޴��� ��ȣ</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" id="tel" data-rule-required="true" placeholder="-�� �����ϰ� ���ڸ� �Է��ϼ���." maxlength="11">
                    </div>
                </div>
                <div class="normalbold tb_ttl" id="tel">
                    <label for="inputAddr" class="col-lg-2 control-label">�ּ�</label>
                    <div class="col-lg-10">
                        <input type="addr" class="form-control onlyNumber" id="tel" data-rule-required="true" placeholder="�ּҸ� �Է��ϼ���" maxlength="50">
                    </div>
                </div>
                <div class="normalbold tb_ttl" id="tel">
                    <label for="inputJumin" class="col-lg-2 control-label">�ֹε�� ��ȣ</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" id="tel" data-rule-required="true" placeholder="-�� �����ϰ� ���ڸ� �Է��ϼ���." maxlength="13">
                    </div>
                </div>
                
      
                <div class="normalbold tb_ttl">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">����</label>
                </div>
                <div class="normalbold tb_ttl">
                    <label for="inputEmailReceiveYn" class="col-lg-2 control-label">�̸��� ���ſ���</label>
                    <div class="col-lg-10">
                        <label class="radio-inline">
                            <input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="Y" checked> �����մϴ�.
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="N"> �������� �ʽ��ϴ�.
                        </label>
                    </div>
                </div>
                <div class="normalbold tb_ttl">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">SMS ���ſ���</label>
                    <div class="col-lg-10">
                        <label class="radio-inline">
                            <input type="radio" id="smsReceiveYn" name="smsReceiveYn" value="Y" checked> �����մϴ�.
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="smsReceiveYn" name="smsReceiveYn" value="N"> �������� �ʽ��ϴ�.
                        </label>
                    </div>
                </div>
                <div class="normalbold tb_ttl">
                    <div class="header-cart-buttons flex-w w-full">
						<a href="home-02.html" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
						ȸ������
						</a>
					</div>
                </div>
            </form>
        
        
        <script>
        
            $(function(){
                //����� ���������� ����
                var modalContents = $(".modal-contents");
                var modal = $("#defaultModal");
                
                $('.onlyAlphabetAndNumber').keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val($(this).val().replace(/[^_a-z0-9]/gi,'')); //_(underscore), ����, ���ڸ� ����
                    }
                });
                
                $(".onlyHangul").keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val(inputVal.replace(/[a-z0-9]/gi,''));
                    }
                });
            
                $(".onlyNumber").keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val(inputVal.replace(/[^0-9]/gi,''));
                    }
                });
                
                //------- �˻��Ͽ� ���¸� class�� ����
                $('#id').keyup(function(event){
                    
                    var id = $('#id');
                    
                    if($('#id').val()==""){
                        id.removeClass("has-success");
                        id.addClass("has-error");
                    }else{
                       	id.removeClass("has-error");
                        id.addClass("has-success");
                    }
                });
                
                $('#password').keyup(function(event){
                    
                    var divPassword = $('#divPassword');
                    
                    if($('#password').val()==""){
                        divPassword.removeClass("has-success");
                        divPassword.addClass("has-error");
                    }else{
                        divPassword.removeClass("has-error");
                        divPassword.addClass("has-success");
                    }
                });
                
                $('#password2').keyup(function(event){
                    
                    var passwordCheck = $('#password2').val();
                    var password = $('#password').val();
                    var divPasswordCheck = $('#password2');
                    
                    if((passwordCheck=="") || (password!=passwordCheck)){
                        divPasswordCheck.removeClass("has-success");
                        divPasswordCheck.addClass("has-error");
                    }else{
                        divPasswordCheck.removeClass("has-error");
                        divPasswordCheck.addClass("has-success");
                    }
                });
                
                $('#name').keyup(function(event){
                    
                    var divName = $('#name');
                    
                    if($.trim($('#name').val())==""){
                        divName.removeClass("has-success");
                        divName.addClass("has-error");
                    }else{
                        divName.removeClass("has-error");
                        divName.addClass("has-success");
                    }
                });
                
                
                $('#email').keyup(function(event){
                    
                    var divEmail = $('#divEmail');
                    
                    if($.trim($('#email').val())==""){
                        divEmail.removeClass("has-success");
                        divEmail.addClass("has-error");
                    }else{
                        divEmail.removeClass("has-error");
                        divEmail.addClass("has-success");
                    }
                });
                
                $('#tel').keyup(function(event){
                    
                    var divPhoneNumber = $('#tel');
                    
                    if($.trim($('#tel').val())==""){
                        divPhoneNumber.removeClass("has-success");
                        divPhoneNumber.addClass("has-error");
                    }else{
                        divPhoneNumber.removeClass("has-error");
                        divPhoneNumber.addClass("has-success");
                    }
                });
                
                
                //------- validation �˻�
                $( "form" ).submit(function( event ) {
                    
                    var provision = $('#provision');
                    var memberInfo = $('#memberInfo');
                    var id = $('#id');
                    var password = $('#password');
                    var password2 = $('#password2');
                    var name = $('#name');
                    var tel = $('#tel');
                    
                    //ȸ�����Ծ��
                    if($('#provisionYn:checked').val()=="N"){
                        modalContents.text("ȸ�����Ծ���� �����Ͽ� �ֽñ� �ٶ��ϴ�."); //��� �޽��� �Է�
                        modal.modal('show'); //��� ����
                        
                        provision.removeClass("has-success");
                        provision.addClass("has-error");
                        $('#provisionYn').focus();
                        return false;
                    }else{
                        provision.removeClass("has-error");
                        provision.addClass("has-success");
                    }
                    
                    //����������޹�ħ
                    if($('#memberInfoYn:checked').val()=="N"){
                        modalContents.text("����������޹�ħ�� �����Ͽ� �ֽñ� �ٶ��ϴ�.");
                        modal.modal('show');
                        
                        memberInfo.removeClass("has-success");
                        memberInfo.addClass("has-error");
                        $('#memberInfoYn').focus();
                        return false;
                    }else{
                        memberInfo.removeClass("has-error");
                        memberInfo.addClass("has-success");
                    }
                    
                    //���̵� �˻�
                    if($('#id').val()==""){
                        modalContents.text("���̵� �Է��Ͽ� �ֽñ� �ٶ��ϴ�.");
                        modal.modal('show');
                        
                        id.removeClass("has-success");
                        id.addClass("has-error");
                        $('#id').focus();
                        return false;
                    }else{
                        id.removeClass("has-error");
                       id.addClass("has-success");
                    }
                    
                    //�н����� �˻�
                    if($('#password').val()==""){
                        modalContents.text("�н����带 �Է��Ͽ� �ֽñ� �ٶ��ϴ�.");
                        modal.modal('show');
                        
                        divPassword.removeClass("has-success");
                        divPassword.addClass("has-error");
                        $('#password').focus();
                        return false;
                    }else{
                        divPassword.removeClass("has-error");
                        divPassword.addClass("has-success");
                    }
                    
                    //�н����� Ȯ��
                    if($('#password2').val()==""){
                        modalContents.text("�н����� Ȯ���� �Է��Ͽ� �ֽñ� �ٶ��ϴ�.");
                        modal.modal('show');
                        
                        divPasswordCheck.removeClass("has-success");
                        divPasswordCheck.addClass("has-error");
                        $('#password2').focus();
                        return false;
                    }else{
                        divPasswordCheck.removeClass("has-error");
                        divPasswordCheck.addClass("has-success");
                    }
                    
                    //�н����� ��
                    if($('#password').val()!=$('#password2').val() || $('#passwordCheck').val()==""){
                        modalContents.text("�н����尡 ��ġ���� �ʽ��ϴ�.");
                        modal.modal('show');
                        
                        divPasswordCheck.removeClass("has-success");
                        divPasswordCheck.addClass("has-error");
                        $('#password2').focus();
                        return false;
                    }else{
                        divPasswordCheck.removeClass("has-error");
                        divPasswordCheck.addClass("has-success");
                    }
                    
                    //�̸�
                    if($('#name').val()==""){
                        modalContents.text("�̸��� �Է��Ͽ� �ֽñ� �ٶ��ϴ�.");
                        modal.modal('show');
                        
                        divName.removeClass("has-success");
                        divName.addClass("has-error");
                        $('#name').focus();
                        return false;
                    }else{
                        divName.removeClass("has-error");
                        divName.addClass("has-success");
                    }
                  
                    //�޴��� ��ȣ
                    if($('#tel').val()==""){
                        modalContents.text("�޴��� ��ȣ�� �Է��Ͽ� �ֽñ� �ٶ��ϴ�.");
                        modal.modal('show');
                        
                        divPhoneNumber.removeClass("has-success");
                        divPhoneNumber.addClass("has-error");
                        $('#tel').focus();
                        return false;
                    }else{
                        divPhoneNumber.removeClass("has-error");
                        divPhoneNumber.addClass("has-success");
                    }
                    
                
                });
                
            });
            
        </script>

            <hr/>

        </div>
    </body>
</html>