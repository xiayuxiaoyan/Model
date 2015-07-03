<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>高思实验室2015春季招新</title>
    <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
    <style type="text/css">
        * {
            padding: 0;
            margin: 0;
        }

        body {

        }

        .total {
            width: 70%;
            margin: auto;
            background-color: white;
            color: #797979;
        }

        .head {padding-top: 50px;
            padding-bottom: 50px;
            background-color: rgba(53, 213, 255, 0.48);
            color: white;


        }

        div {
            padding: 10px;

        }
        .container1{
            background-color: rgba(255, 234, 95, 0.18);

        }
        .container2{
            background-color: rgba(255, 234, 95, 0.18);

        }
        .container3{
            background-color: rgba(255, 234, 95, 0.18);

        }
        .container4{
            background-color: rgba(255, 234, 95, 0.18);

        }
        .container5{
            background-color: rgba(255, 234, 95, 0.18);

        }
        .container6{
            background-color: rgba(255, 234, 95, 0.18);

        }
        .container7{
            background-color: rgba(255, 234, 95, 0.18);

        }
        .container8{
            background-color: rgba(255, 234, 95, 0.18);

        }
        textarea{border-style:groove;

        }
        input {border-style:groove;
            height: 20px;

        }
        input.r{
            height: 12px;
        }
        input.b{
            height: 30px;
            width: 45px;
            background-color: #ff7136;
            color: white;
        }
        select{
            border-style: none;
            height: 20px;

            color:  #797979;
        }

        p {
            padding: 10px;
        }

        h2 {
            padding: 30px;
            background-color: rgba(255, 113, 54, 0.80);
            color: white;

        }

        .cutline {
            height: 1px;

        }
        .foot{
            margin-left: 46%;

        }






    </style>
</head>

<body>
<div class="total">
    <div class="head">
        <h1 id="title" align="center">高思实验室招新调查问卷</h1>
    </div>
    <form name="allInformation" action="/GsLab/view/userRegister" method="post">
    <div class="container1">

        <p id="category_name">类别
            <select name="category">
                <option value="FEP">FEP</option>
                <option value="XNN">XNN</option>
                <option value="V-LAB">V-LAB</option>
                <option value="OME">OME</option>
                <option value="ACA">ACA</option>
            </select>
        </p>
        
            <p id="name">
                姓名
                <input type="text" name="userName" size="4">
                性别
                <span style="width:50px">&nbsp;</span>
                男
                <input class="r" type="radio" name="gender" value="male" />
                女
                <input class="r" type="radio" name="gender" value="female"/></p>

            <p id="birthday">
                出生年月
                <input type="text" onclick="WdatePicker()"  name="birthday" size="10" placeholder="单击输入年月日"/>
                <span style="width:20px">&nbsp;
                籍贯
                <input type="text" name="native_place" size="10"/>

            </span>
            </p>
            <p id="class">
                班级类型
                <select name="class_type">
                    <option value="English">英强</option>
                    <option value="Japanese">日强</option>
                    <option value="Network">网络</option>
                </select>
                &nbsp年级
                <select name="grade">
                    <option value="num1">11级</option>
                    <option value="num2">12级</option>
                    <option value="num3">13级</option>
                    <option value="num4">14级</option>
                </select>
                &nbsp班号
                <input width="50px" type="text" size="4" name="classno"/>
                &nbsp学号
                <input width="50px" type="text" size="9" name="studentid"/>
            </p>
            <p id="najor">
                专业方向
                <input type="text" size="10" name="major"/>
                Email
                <input type="email" size="15" name="email"/>
            </p>

            <p id="mobilephone">
                联系电话
                <input type="tel" size="10" name="phone"/>
                &nbsp&nbsp QQ
                <input type="text" size="15" name="qq"/>
            </p>


    </div>
    <h2 id="subtitle_1" align="center">学业调查</h2>
    <div class="container2">


            <p id="subtitle_1.1">1.你的学业成绩怎么样
                <select name="condition">
                    <option value="excellent">优秀</option>
                    <option value="good">良好</option>
                    <option value="common">一般</option>
                    <option value="bad">不及格</option>
                </select>
                &nbsp平均成绩:
                <input type="text" size="3" name="score"/>
                <span style="width:20px">&nbsp;</span>
                年级排名
                <input type="text" size="3" name="ranking"/>
            </p>
            <p id="subtitle_1.2">2.你觉得自己能否轻松应对学业课程？
                <span style="width:50px">&nbsp;</span>
                是
                <input class="r" type="radio" value="yes"  name="subtitle_1_2"/>
                否
                <input class="r" type="radio" value="no" name="subtitle_1_2"/>
            </p>

            <p id="subtitle_1.3">3.你的课堂听课效率如何？
                <span style="width:50px">&nbsp;</span>
                <select name="effect">
                    <option value="excellent">轻松应对</option>
                    <option value="good">大部分能听懂</option>
                    <option value="common">少部分</option>
                    <option value="bad">完全听不懂</option>
                </select>
            </p>
            <p id="subtitle_1.4">4.你有瘸腿课程吗？
                <span style="width:50px">&nbsp;</span>
                是
                <input class="r" type="radio"  value="yes" name="subtitle_1_4_1"/>
                否
                <input class="r" type="radio" value="no" name="subtitle_1_4_1"/>
                &nbsp&nbsp如果有，是什么：
                <input type="text" size="12"/>
                &nbsp&nbsp是否有应对计划？
                <span style="width:50px">&nbsp;</span>
                是
                <input class="r" type="radio"  value="yes" name="subtitle_1_4_2"/>
                否
                <input class="r" type="radio" value="no" name="subtitle_1_4_2"/>
            </p>

            <p id="subtitle_1.5">5.你有强项课程吗？
                <span style="width:50px">&nbsp;</span>
                是
                <input class="r" type="radio"  value="yes" name="subtitle_1_5"/>
                否
                <input class="r" type="radio"  value="no" name="subtitle_1_5"/>
                &nbsp&nbsp如果有，是什么：
                <input type="text" size="12" name="subtitle_1_5_1"/>
            </p>

            <p id="subtitle_1.6">6.你觉的你目前成绩理想吗？
                <span style="width:50px">&nbsp;</span>
                是
                <input class="r" type="radio"  value="yes" name="subtitle_1_6"/>
                否
                <input class="r" type="radio"  value="no" name="subtitle_1_6"/>
            </p>

            <p id="subtitle_1.7">7.你是否感觉到自己很努力了，但是成绩还是不理想，甚至还不如那些不怎么学习的同学呢？
                <span style="width:50px">&nbsp;</span>
                是
                <input class="r" type="radio"  value="yes" name="subtitle_1_7"/>
                否
                <input class="r" type="radio"  value="no" name="subtitle_1_7"/>
            </p>

            <p id="subtitle_1.8">
                8.你的写作能力如何？(请简要描述)
                <br/>
                <br/>
                <input type="text" size="90" maxlength="100" placeholder="（50字以内）" name="subtitle_1_8"/>

            </p>


            <p id="subtitle_1.9">9.你是否服从调剂?
                <span style="width:50px">&nbsp;&nbsp;&nbsp;</span>
                是
                <input class="r" type="radio"  value="yes" name="subtitle_1_9"/>
                否
                <input class="r" type="radio"  value="no" name="subtitle_1_9"/>
            </p>

        <div class="cutline"></div>
    </div>
    <h2 id="subtitle_2" align="center">个人兴趣爱好</h2>

    <div class="container3">
        <div>
                <textarea rows="10" cols="110" maxlength="300" id="interest" name="interest"placeholder="请填写坚持一年以上的爱好并进行简短说明（300字以内）"></textarea>
        </div>
    </div>
    <h2 id="subtitle_3" align="center">个人特长</h2>

    <div class="container4">
        <div>
                <textarea rows="10" cols="110"  maxlengh="300"id="skill" name="skill" placeholder="达到熟悉最好精通，如有获奖经历以及证书请详述（300字以内）"></textarea>
        </div>
    </div>
    <h2 id="subtitle_4" align="center">个人未来发展规划</h2>

    <div class="container5">
        <div>

                工作/就业
                <input class="r" type="radio" value="job" name="plan" />
                考研/保研
                <input class="r" type="radio" value="postgraduate" name="plan"/>
                出国
                <input class="r" type="radio" value="out"name="plan"/>
                创业
                <input class="r" type="radio" value="start" name="plan"/>
                请详细写出。
                <br/><br/>
                <textarea rows="10" cols="110" maxlength="300"  placeholder="详述各年级的短期计划以及长期计划（300字以内）" name="plan_detail"></textarea>

            <div class="cutline"></div>
        </div>
    </div>
    <h2 id="subtitle_5" align="center">项目经历</h2>

    <div class="container6">
        <div>
                <textarea rows="10" cols="110" maxlength="300" id="experience" name="experience"placeholder="请逐条列举(每条描述不超过30字)" ></textarea>
            <div class="cutline"></div>
        </div>
    </div>
    <h2 id="subtitle_6" align="center">科研经历、成果</h2>

    <div class="container7">

        <div>
                <textarea rows="10" cols="110"  maxlength="300" id="achievement"name="achievement" placeholder="请逐条列举，比赛请注明校级或院级(300字以内)" ></textarea>
            <div class="cutline"></div>
        </div>
    </div>
    <h2 id="subtitle_7" align="center">加入实验室的目的</h2>

    <div class="container8">
        <div>
                <textarea rows="10" cols="110" maxlength="300" id="goal"name="goal"placeholder="请根据加入小组类型以及发展计划进行说明（最少50字）"></textarea>
            <br/>
            <div class="foot">
                <input  class="b" type="button"  name="return" value="返回"/>
                <input class="b" type="submit"    value="提交"/>
            </div>

        </div>

    </div>

</form>

</div>

</body>
</html>


</html>
