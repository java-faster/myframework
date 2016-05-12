var ie = ! -[1, ],opera=navigator.userAgent.indexOf('Opera')>=0, myDate = new Date();
// Downloads By http://down.liehuo.net
function Sin(x,v) {
    var y = Math.round(Math.sin(Math.PI*x/180)*100)/100;
    return ie?y*v*3:y*v;
}

/*返回数组序号*/
Num = function(e, eles) {
    for (var i = 0; i < eles.length; i++) {
        if (eles[i] == e) { return i; }
    }
}

/*字符串判定*/
GetCur = function(Str, cur) {
    var str = new RegExp(cur, "gi")
    return str.test(Str);
}

/*DOM构造*/
var div=function(id){return new HtmlEle.init(id);}
HtmlEle={
	init:function(id){
		this[0]=typeof(id)=="object"?id:document.getElementById(id);
		return this;
	},
	Css:function(s){
		for(var i in s){
			this[0].style[i]=s[i];
		}
	},
	Obj:function(){
		var obj=this[0];
		var objTop=obj.offsetTop,objLeft=obj.offsetLeft,objWidth=obj.offsetWidth,objHeight=obj.offsetHeight;
		return {top:objTop,right:objLeft+objWidth,bottom:objTop+objHeight,left:objLeft,width:objWidth,height:objHeight}
	},
	MoveReady:true,
	Move:function(s,point,endFc){
		var obj=this[0],n=0,v=s,main=this,v2=90;
		if(this.MoveReady==true){
			//main.MoveReady=false;

			var Top=function(){
				n=n<v2?n+1:n;
				var m=Sin(n,v);
				if(m<Math.abs(s)){obj.style.top=P-m+"px"}else{obj.style.top=P-s+"px";clearInterval(myMove);main.MoveReady=true;endFc?endFc():false;};
			}
			var Right=function(){
				n=n<v2?n+1:n;
				var m=Sin(n,v);
				if(m<Math.abs(s)){obj.style.left=P+m+"px"}else{obj.style.right=P+s+"px";clearInterval(myMove);main.MoveReady=true;endFc?endFc():false;};
			}
			var Bottom=function(){
				n=n<v2?n+1:n;
				var m=Sin(n,v);
				if(m<Math.abs(s)){obj.style.top=P+m+"px"}else{obj.style.top=P+s+"px";clearInterval(myMove);main.MoveReady=true;endFc?endFc():false;};
			}
			var Left=function(){
				n=n<v2?n+1:n;
				var m=Sin(n,v);
				if(m<Math.abs(s)){obj.style.left=P-m+"px"}else{obj.style.left=P-s+"px";clearInterval(myMove);main.MoveReady=true;endFc?endFc():false;};
			}

			switch(point){
				case "top" : var P=obj.offsetTop,Point=Top;break;
				case "right" : var P=obj.offsetLeft,Point=Right;break;
				case "bottom" : var P=obj.offsetTop,Point=Bottom;break;
				case "left" : var P=obj.offsetLeft,Point=Left;break;
			}

			var myMove=setInterval(Point,5)
		}
	},
	ScrollReady:true,
	Scroll:function(s,point,endFc){
		var obj=this[0],n=0,v=s,main=this,v2=90;
		if(this.ScrollReady==true){
			//main.ScrollReady=false;
			var Top=function(){
				n=n<v2?n+1:n;
				var m=Sin(n,v);
				if(m<Math.abs(s)){obj.scrollTop=P+m}else{obj.scrollTop=P+s;clearInterval(myMove);main.ScrollReady=true;endFc?endFc():false;};
			}
			var Right=function(){
				n=n<v2?n+1:n;
				var m=Sin(n,v);
				if(m<Math.abs(s)){obj.scrollLeft=P-m}else{obj.scrollLeft=P-s;clearInterval(myMove);main.ScrollReady=true;endFc?endFc():false;};
			}
			var Bottom=function(){
				n=n<v2?n+1:n;
				var m=Sin(n,v);
				if(m<Math.abs(s)){obj.scrollTop=P-m}else{obj.scrollTop=P-s;clearInterval(myMove);main.ScrollReady=true;endFc?endFc():false;};
			}
			var Left=function(){
				n=n<v2?n+1:n;
				var m=Sin(n,v);
				if(m<Math.abs(s)){obj.scrollLeft=P+m}else{obj.scrollLeft=P+s;clearInterval(myMove);main.ScrollReady=true;endFc?endFc():false;};
			}

			switch(point){
				case "top" : var P=obj.scrollTop,Point=Top;break;
				case "right" : var P=obj.scrollLeft,Point=Right;break;
				case "bottom" : var P=obj.scrollTop,Point=Bottom;break;
				case "left" : var P=obj.scrollLeft,Point=Left;break;
			}

			var myMove=setInterval(Point,5)
		}
	},
	Mouse:function(e,f){
		switch(e){
			case "click" : this[0].onclick=f;break;
			case "dbclick" : this[0].ondblclick=f;break;
			case "over" : this[0].onmouseover=f;break;
			case "out" : this[0].onmouseout=f;break;
			case "down" :this[0].onmousedown=f;break;
			case "up" : this[0].onmouseup=f;break;
		}
	},
	MouseSite:function(e){
		var e=e?e:window.event;
		return {x:e.clientX,y:e.clientY}
	},
	Create:function(ele,atrs){
		var obj=this[0],o=document.createElement(ele);
		if(atrs){
			for(var i in atrs){
				o.setAttribute(i,atrs[i]);
			}
		}
		return o;
	},
	MouseFollow:function(){
		var main=this;
		main[0].onmouseover=function(){this.style.cursor="pointer";}
		main[0].onmousedown=function(){
			var oX=main.MouseSite(arguments[0]).x-main.Obj().left,oY=main.MouseSite(arguments[0]).y-main.Obj().top;
			document.onmousemove=function(){
				main.Css({left:main.MouseSite(arguments[0]).x-oX+"px",top:main.MouseSite(arguments[0]).y-oY+"px"});
				return false;
			}
			return false;
		}
		main[0].onmouseout=function(){document.onmousemove="";}
		main[0].onmouseup=function(){document.onmousemove="";}
	},
	Alpha:function(str1,str2,endFc){
		var main=this;
		var str1=ie?str1:str1/100,str2=ie?str2:str2/100,v=ie?8:0.01,m=navigator.userAgent.indexOf('Opera')>= 0?5:1;
		v=str1>str2?v*-1:v;
		main.Css({opacity:str1,filter:"alpha(opacity="+String(str1)+")"});
		function alpha(){
			if(Math.round(str1*100)/100==str2){
				clearInterval(main.AlphaFc);
				main.Css({opacity:str2,filter:"alpha(opacity="+String(str2)+")"});
				endFc?endFc():false;
			}else{
				main.Css({opacity:str1+v,filter:"alpha(opacity="+String(str1+v)+")"});
				str1+=v;
			}
		}
		main.AlphaFc=setInterval(alpha,m);
	},
	ObjSize:function(o,atr,endFc){
		var oW=o.offsetWidth,oH=o.offsetHeight,Nl=true;
		var oSize=function(str,value){
			var str1=str=="width"?oW:oH,s=0,m=navigator.userAgent.indexOf('Opera')>= 0?5:1;
			var n=0,v=Math.abs(str1-value),f=str1<value?1:-1,v2=90;
			function init(){
				n=n<v2?n+1:n;
				var m=Sin(n,v)*f;
				if(Math.abs(m)<v){o.style[str]=str1+m+"px";}else{clearInterval(myInit);o.style[str]=value+"px";if(endFc){if(Nl){endFc();Nl=false}}}
			}
			var myInit=setInterval(init,m);
		}
		for(var i in atr){
			new oSize(i,atr[i]);
		}
	}
}
HtmlEle.init.prototype=HtmlEle;

/*相册*/
var picShow=function(pics){;
	this.pics=pics;
	this.name="NewPicShow";
	this.mk=8;
	this.ln=0;
	this.mSt=[];
	this.NewStyle="";
	this.ms=110*this.mk;
	this.scroll_n=0;
	this.delay=false;
	this.cFrame();
}
picShow.prototype.cFrame=function(){
	var main=this;
	var H=document.documentElement.scrollHeight,W="100%",h=document.documentElement.clientHeight-110;
	var Fbg=div().Create("div",{"id":main.name+"Bg","class":main.name+"Bg","className":main.name+"Bg"});
	var FpicNav=div().Create("div",{"id":main.name+"PicNav","class":main.name+"PicNav","className":main.name+"PicNav"});
	main.Fbg=Fbg;
	main.Fhtml=div().Create("div",{"id":main.name+"Html","class":main.name+"Html","className":main.name+"Html"});
	var eles="",eles_i=0;

	for(var i in main.pics){
		if(i=="p1"){eles+="<li class='cur'><a href='"+main.pics[i].b+"'><img src='"+main.pics[i].s+"' /></a></li>";}else{eles+="<li><a href='"+main.pics[i].b+"'><img src='"+main.pics[i].s+"' /></a></li>";}
		eles_i++;
	}

	FpicNav.innerHTML="<div class='"+main.name+"navListWrap'><span id='"+main.name+"btnl' class='"+main.name+"btnl'></span><span id='"+main.name+"btnr' class='"+main.name+"btnr'></span><div id='"+main.name+"ScrollWrap' class='"+main.name+"ScrollWrap'><ul id='"+main.name+"navList' class='"+main.name+"navList'>"+eles+"</ul></div><div id='"+main.name+"Control' class='"+main.name+"Control'></div></div>";

	main.FimgWrap=div().Create("div",{"id":main.name+"FimgWrap","class":main.name+"FimgWrap","className":main.name+"FimgWrap"})
	main.Fhtml.appendChild(FpicNav);
	main.Fhtml.appendChild(main.FimgWrap);
	main.ScrollWidth=874;
	main.mSt.push("."+main.name+"Bg{background:#000;opacity:0.5;filter:alpha(opacity='50');width:"+String(W)+";height:"+String(ie?H:h)+"px;position:absolute;left:0;top:0;z-index:998;}");
	main.mSt.push("."+main.name+"Html{opacity:1;filter:alpha(opacity='100');z-index:999;}");
	main.mSt.push("."+main.name+"navListWrap{height:100px;position:absolute;top:"+h+"px;overflow:hidden;background:#262825;padding-top:6px;width:100%;border-top:3px solid #3B3E3D;z-index:1000;}");
	main.mSt.push("."+main.name+"ScrollWrap{width:"+main.ScrollWidth+"px;margin:0 auto;overflow:hidden;}");
	main.mSt.push("."+main.name+"navList{width:"+110*eles_i+"px;margin-left:-6px;overflow:hidden;zoom:1}");
	main.mSt.push("."+main.name+"navList li{float:left;opacity:0.3;filter:alpha(opacity='30');border:1px solid #fff;padding:1px;margin-left:6px;display:inline;}");
	main.mSt.push("."+main.name+"navList img{width:100px;height:60px;}");
	main.mSt.push("."+main.name+"navList .cur{opacity:1;filter:alpha(opacity='100');border:1px solid #960;}");
	main.mSt.push("."+main.name+"navList a{display:block;line-height:0;font-size:0}");
	main.mSt.push("."+main.name+"imgWrap{position:absolute;z-index:999;padding:4px;background:#fff;color:#999;}");
	main.mSt.push("."+main.name+"FimgWrap{width:100%;height:"+h+"px;overflow:hidden;position:relative;z-index:999}");
	main.mSt.push("."+main.name+"Control{margin:4px auto 0;width:252px;}");
	main.mSt.push("."+main.name+"Ico{background:url('../style/imgs/ico.png') no-repeat left top;float:left;width:29px;height:19px;cursor:pointer;margin-right:4px;margin-top:6px;}");
	main.mSt.push("."+main.name+"SizeUp{}");
	main.mSt.push("."+main.name+"SizeDown{background-position:-30px top;}");
	main.mSt.push("."+main.name+"SizeAuto{background-position:-58px top;}");
	main.mSt.push("."+main.name+"ImgPrv{background-position:-220px top;width:24px;height:29px;margin:0;}");
	main.mSt.push("."+main.name+"ImgPlay{background-position:-244px top;width:31px;height:29px;margin:0;}");
	main.mSt.push("."+main.name+"ImgNext{background-position:-275px top;width:24px;height:29px;margin-top:0;}");
	main.mSt.push("."+main.name+"ImgAdd{background-position:-150px top;width:28px;}");
	main.mSt.push("."+main.name+"ImgOther{background-position:-185px top;width:34px;}");
	main.mSt.push("."+main.name+"btnl,."+main.name+"btnr{background:url('../style/imgs/ico.png') no-repeat left -40px;width:35px;height:35px;position:absolute;cursor:pointer;left:50%;top:20px;margin-left:-485px;}");
	main.mSt.push("."+main.name+"btnr{background-position:-36px -40px;width:35px;margin-left:450px;}");
	main.mSt.push("."+main.name+"Close{background-position:-73px -40px;width:21px;height:21px;position:absolute;margin:0;right:10px;top:10px;z-index:1000;}");
	for(var i in main.mSt){
		main.NewStyle+=main.mSt[i];
	}

	if(ie){
		var MyStyle=document.createStyleSheet();
		MyStyle.cssText=main.NewStyle;
	}else{
		var MyStyle=div().Create("style",{"type":"text/css"});
		MyStyle.innerHTML=main.NewStyle;
		document.getElementsByTagName("head")[0].appendChild(MyStyle);
	}

	document.body.appendChild(Fbg);
	document.body.appendChild(main.Fhtml);
	main.iControl={
		SizeUp:div().Create("span",{"id":main.name+"SizeUp","class":main.name+"SizeUp "+main.name+"Ico","className":main.name+"SizeUp "+main.name+"Ico"}),
		SizeDown:div().Create("span",{"id":main.name+"SizeDown","class":main.name+"SizeDown "+main.name+"Ico","className":main.name+"SizeDown "+main.name+"Ico"}),
		SizeAuto:div().Create("span",{"id":main.name+"SizeAuto","class":main.name+"SizeAuto "+main.name+"Ico","className":main.name+"SizeAuto "+main.name+"Ico"}),
		ImgPrv:div().Create("span",{"id":main.name+"ImgPrv","class":main.name+"ImgPrv "+main.name+"Ico","className":main.name+"ImgPrv "+main.name+"Ico"}),
		ImgPlay:div().Create("span",{"id":main.name+"ImgPlay","class":main.name+"ImgPlay "+main.name+"Ico","className":main.name+"ImgPlay "+main.name+"Ico"}),
		ImgNext:div().Create("span",{"id":main.name+"ImgNext","class":main.name+"ImgNext "+main.name+"Ico","className":main.name+"ImgNext "+main.name+"Ico"}),
		ImgAdd:div().Create("span",{"id":main.name+"ImgAdd","class":main.name+"ImgAdd "+main.name+"Ico","className":main.name+"ImgAdd "+main.name+"Ico"}),
		ImgOther:div().Create("span",{"id":main.name+"ImgOther","class":main.name+"ImgOther "+main.name+"Ico","className":main.name+"ImgOther "+main.name+"Ico"})
	};
	var ImgControl=div(main.name+"Control")[0];
	for(var i in main.iControl){
		main[i]=main.iControl[i];
		ImgControl.appendChild(main[i]);
	}
	div(main.name+"ScrollWrap")[0].scrollLeft=0;

	main.CloseBtn=div().Create("span",{"id":main.name+"Close","class":main.name+"Close "+main.name+"Ico","className":main.name+"Close "+main.name+"Ico"});
	main.Fhtml.appendChild(main.CloseBtn);

	main.picEvent();
	main.imgControl();
}
picShow.prototype.picEvent=function(){
	var main=this;
	main.anchors=div(main.name+"navList")[0].getElementsByTagName("li");
	for(var i=0;i<main.anchors.length;i++){
		main.anchors[i].onmouseover=function(){
			if(main.ln!=Num(this,main.anchors)){
				this.className="cur";
			}
		}
		main.anchors[i].onmouseout=function(){
			if(main.ln!=Num(this,main.anchors)){
				this.className="";
			}
		}
		main.anchors[i].onclick=function(){
			main.iShow(this);
			return false;
		}
	}
	main.iShow(main.anchors[0],true);
}
picShow.prototype.iShow=function(e,once){
	var main=this;
	if(Num(e,main.anchors)==main.ln){
		if(once==undefined)return false;
	}
	if(main.curImg){
		main.FimgWrap.removeChild(main.curImg);
	}
	var n=main.ln;
	main.ln=Num(e,main.anchors);
	if(n!=main.ln){
		main.anchors[n].className="";
	}
	main.curImg=div().Create("div",{"class":main.name+"imgWrap","className":main.name+"imgWrap","id":main.name+"imgWrap"});
	main.curImg.innerHTML="图片加载中，请稍等...";
	main.FimgWrap.appendChild(main.curImg);
	var anchor=e.getElementsByTagName("a")[0];
	var Img=new Image();
	Img.src=anchor.href;
	Img.title=anchor.title;
	if(Img.complete){
		main.iStart(Img);
	}else{
		Img.onload=function(){
			main.iStart(Img);
		}
	}
}
picShow.prototype.iStart=function(Img){
	var main=this;
	var w=h="auto",cw=document.documentElement.clientWidth-100,ch=document.documentElement.clientHeight-200;
	if(Img.width/cw>Img.height/ch){
		w=Img.width>cw?cw:Img.width;
	}else{
		h=Img.height>ch?ch:Img.height;
	}
	main.curImg.innerHTML="<img id='"+main.name+"CurImg' src='"+Img.src+"' title='"+Img.title+"' style='width:"+w+"px;height:"+h+"px;' />"
	main.curImg.style.left=String(50+(cw-main.curImg.offsetWidth)/2)+"px";
	main.curImg.style.top="50px";
	div(main.curImg).Alpha(0,100);
	div(main.curImg).MouseFollow();
}
picShow.prototype.imgControl=function(){
	var main=this;
	var obj=div(main.name+"ScrollWrap")[0];
	var firstObj=obj.getElementsByTagName("li")[0];
	main.ImgPrv.onclick=function(){
		if(main.delay==true){return false;}
		function NewImgShow(){
			if(main.ln>0){
				main.iShow(main.anchors[main.ln-1]);
				main.anchors[main.ln].className="cur";
			}else{
				main.iShow(main.anchors[main.anchors.length-1]);
				main.anchors[main.ln].className="cur";
			}
			main.delay=false;
		}
		var os0=obj.scrollLeft,os1=main.anchors[main.ln==0?main.anchors.length-1:main.ln-1].offsetLeft-firstObj.offsetLeft;
		if(main.ln!=0){
			if(os0>os1){
				main.delay=true;
				div(main.name+"ScrollWrap").Scroll(os0-os1,"right",NewImgShow);
			}else{
				NewImgShow();
			}
		}else{
			div(main.name+"ScrollWrap").Scroll(os1-os0,"left",NewImgShow);
		}
	}
	main.ImgNext.onclick=function(){
		if(main.delay==true){return false;}
		function NewImgShow(){
			if(main.ln<main.anchors.length-1){
				main.iShow(main.anchors[main.ln+1]);
				main.anchors[main.ln].className="cur";
			}else{
				main.iShow(main.anchors[0]);
				main.anchors[main.ln].className="cur";
			}
			main.delay=false;
		}

		var os0=obj.scrollLeft+obj.offsetWidth,os1=main.anchors[main.ln==main.anchors.length-1?0:main.ln+1].offsetLeft+110-firstObj.offsetLeft-6;
		if(main.ln==main.anchors.length-1){div(main.name+"ScrollWrap").Scroll(obj.scrollLeft,"right",NewImgShow);}else{
			if(main.ln!=main.anchors.length){
				if(os0<os1){
					main.delay=true;
					div(main.name+"ScrollWrap").Scroll(os1-os0,"left",NewImgShow);
				}else{
					NewImgShow();
				}
			}
		}
	}
	main.SizeAuto.onclick=function(){
		var ImgObj=document.getElementById(main.name+"CurImg");
		ImgObj.style.width="auto";
		ImgObj.style.height="auto";
		main.curImg.style.left=String((document.documentElement.clientWidth-main.curImg.offsetWidth)/2)+"px";
		main.curImg.style.top="50px";
	}
	main.SizeUp.onclick=function(){
		var ImgObj=document.getElementById(main.name+"CurImg");
		var w=ImgObj.width,h=ImgObj.offsetHeight;
		ImgObj.style.width=w+w/10+"px",t=main.curImg.offsetTop,l=main.curImg.offsetLeft;
		ImgObj.style.height="auto";
		main.curImg.style.left=l-(ImgObj.offsetWidth-w)/2+"px";
		main.curImg.style.top=t-(ImgObj.offsetHeight-h)/2+"px";
	}
	// Doｗｎｌｏａｄｓ　Ｂｙ　ｈｔｔｐ：／／ｄｏｗｎ．ｌｉｅｈｕｏ．ｎｅt
	main.SizeDown.onclick=function(){
		var ImgObj=document.getElementById(main.name+"CurImg");
		var w=ImgObj.width,h=ImgObj.offsetHeight,t=main.curImg.offsetTop,l=main.curImg.offsetLeft;
		ImgObj.style.width=w-w/10+"px";
		ImgObj.style.height="auto";
		main.curImg.style.left=l+(w-ImgObj.offsetWidth)/2+"px";
		main.curImg.style.top=t+(h-ImgObj.offsetHeight)/2+"px";
	}
	div(main.name+"btnl").Mouse("click",function(){
		div(main.name+"ScrollWrap").Scroll(main.ms,"right");
	});
	div(main.name+"btnr").Mouse("click",function(){
		div(main.name+"ScrollWrap").Scroll(main.ms,"left");
	});
	main.CloseBtn.onclick=function(){
		document.body.removeChild(main.Fhtml);document.body.removeChild(main.Fbg);main.photoBtn.style.display="block";
	}
}