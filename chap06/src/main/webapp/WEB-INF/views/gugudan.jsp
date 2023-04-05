<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
    /* display:grid�� �̿��� �������� ���ְ� ������ �������� */
    #grid-container { 
        display: grid;
        grid-template-columns:0.5fr repeat(9, 1fr);
        grid-template-rows: repeat(9, 50px);
    }

    #grid-container > div { 
        border: dashed orange 3px;
        border-radius: 10px;

    }

    #grid-container > .gop { 
        border-color: red;
    }

    #grid-container > .dan { 
        border-color: green;
    } 
</style> 

</head>
<body>
	
	<h3>�ڹٽ�ũ��Ʈ���� �ݺ����� �ִ�</h3>

    <ul>
        <li>for���� �ִ�</li>
        <li>while���� �ִ�</li>
    </ul>
 
    <div id="grid-container"></div>

    
    <script>
        // �ڹٽ�ũ��Ʈ�� �̿��� �������� �����غ�����
        const gugudan = document.getElementById('grid-container');
         
        let dan = 2;
        let gop = 0;

        while (gop <= 9) {
            if (gop === 0) {
                gugudan.innerHTML += '<div></div>';
            } else {
                gugudan.innerHTML += '<div class="gop">x' + gop + '</div>';
            }
            ++gop;
        }

        while (dan <= 9) {
            gop = 1;
            gugudan.innerHTML += '<div class="dan">' + dan + '��</div>';
            while (gop <= 9) {
                gugudan.innerHTML += 
                    '<div>' + dan + ' x ' + gop + ' = ' + dan * gop + '</div>';
                ++gop;
            }
            ++dan;
        }

    </script>





</body>
</html>