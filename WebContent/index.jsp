<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
   <style type="text/css">
   body {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
  -webkit-justify-content: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
  -webkit-align-items: center;
      -ms-flex-align: center;
          align-items: center;
  width: 100vw;
  height: 100vh;
  overflow: hidden;
  background-color: #171723;
}

.canvas {
  position: relative;
  width: 500px;
  height: 500px;
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  -webkit-transform: rotateX(-35deg);
          transform: rotateX(-35deg);
}

.cube {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 200px;
  height: 200px;
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  -webkit-transform: translate(-50%, -50%) rotateY(45deg);
          transform: translate(-50%, -50%) rotateY(45deg);
}

.group {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
}

.group--aqua {
  -webkit-transform: translate3d(0, 0, 67px);
          transform: translate3d(0, 0, 67px);
}

.group--tomato {
  -webkit-transform: translate3d(0, 0, -67px);
          transform: translate3d(0, 0, -67px);
}

@-webkit-keyframes plane-rotation {
  50%, 100% {
    -webkit-transform: rotateZ(-90deg);
            transform: rotateZ(-90deg);
  }
}

@keyframes plane-rotation {
  50%, 100% {
    -webkit-transform: rotateZ(-90deg);
            transform: rotateZ(-90deg);
  }
}
.plane {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex-wrap: wrap;
      -ms-flex-wrap: wrap;
          flex-wrap: wrap;
  -webkit-box-pack: justify;
  -webkit-justify-content: space-between;
      -ms-flex-pack: justify;
          justify-content: space-between;
  width: 100%;
  height: 100%;
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  -webkit-perspective: 2400px;
          perspective: 2400px;
  -webkit-animation: plane-rotation 2s infinite;
          animation: plane-rotation 2s infinite;
}

.plane--gold {
  -webkit-animation-delay: 0.25s;
          animation-delay: 0.25s;
}

.plane--tomato {
  -webkit-animation-delay: 0.5s;
          animation-delay: 0.5s;
}

@-webkit-keyframes dot-rotation {
  50%, 100% {
    -webkit-transform: rotateY(0deg) rotateX(45deg) scaleX(1.2);
            transform: rotateY(0deg) rotateX(45deg) scaleX(1.2);
  }
}

@keyframes dot-rotation {
  50%, 100% {
    -webkit-transform: rotateY(0deg) rotateX(45deg) scaleX(1.2);
            transform: rotateY(0deg) rotateX(45deg) scaleX(1.2);
  }
}
.dot {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
  -webkit-justify-content: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
  -webkit-align-items: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-flex-basis: 33.33%;
      -ms-flex-preferred-size: 33.33%;
          flex-basis: 33.33%;
  -webkit-transform: rotateY(-45deg) rotateX(35deg) scaleX(1);
          transform: rotateY(-45deg) rotateX(35deg) scaleX(1);
  -webkit-animation: dot-rotation 2s infinite;
          animation: dot-rotation 2s infinite;
}
.dot::before {
  content: '';
  display: block;
  width: 10px;
  height: 10px;
  border-radius: 50%;
}

.dot--aqua::before {
  background-color: aqua;
}

.dot--gold {
  -webkit-animation-delay: 0.25s;
          animation-delay: 0.25s;
}
.dot--gold::before {
  background-color: gold;
}

.dot--tomato {
  -webkit-animation-delay: 0.5s;
          animation-delay: 0.5s;
}
.dot--tomato::before {
  background-color: tomato;
}

   
   </style>
</head>
<body>	
	<h1>hello</h1>
	<hr>
	<h1>hello word!!!!</h1>
	<div class="canvas">
    <div class="cube">
        <div class="group group--aqua">
            <div class="plane plane--aqua">
                <div class="dot dot--aqua"></div>
                <div class="dot dot--aqua"></div>
                <div class="dot dot--aqua"></div>
                <div class="dot dot--aqua"></div>
                <div class="dot dot--aqua"></div>
                <div class="dot dot--aqua"></div>
                <div class="dot dot--aqua"></div>
                <div class="dot dot--aqua"></div>
                <div class="dot dot--aqua"></div>
            </div>
        </div>
        <div class="group">
            <div class="plane plane--gold">
                <div class="dot dot--gold"></div>
                <div class="dot dot--gold"></div>
                <div class="dot dot--gold"></div>
                <div class="dot dot--gold"></div>
                <div class="dot dot--gold"></div>
                <div class="dot dot--gold"></div>
                <div class="dot dot--gold"></div>
                <div class="dot dot--gold"></div>
                <div class="dot dot--gold"></div>
            </div>
        </div>
        <div class="group group--tomato">
            <div class="plane plane--tomato">
                <div class="dot dot--tomato"></div>
                <div class="dot dot--tomato"></div>
                <div class="dot dot--tomato"></div>
                <div class="dot dot--tomato"></div>
                <div class="dot dot--tomato"></div>
                <div class="dot dot--tomato"></div>
                <div class="dot dot--tomato"></div>
                <div class="dot dot--tomato"></div>
                <div class="dot dot--tomato"></div>
            </div>
        </div>
    </div>
</div>

</body>
</html>