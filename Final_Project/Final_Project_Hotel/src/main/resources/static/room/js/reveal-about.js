(function(){setTimeout(a,1000);function a(){document.body.classList.remove("loading");var d=document.getElementById("rev-1"),h=scrollMonitor.create(d,-(d.offsetHeight)),b=1200,f=new RevealFx(d,{revealSettings:{direction:"tb",bgcolor:"#212121",duration:b/3,easing:"easeInOutCirc",coverArea:100,revealWidth:"12px",onCover:function(j,k){console.log("Element has being covered.");anime({targets:k,width:{value:j.offsetWidth,duration:b/3,},easing:"easeInOutQuad",complete:function(){j.style.opacity=1;anime({targets:k,width:{value:0,duration:b/3},translateX:{value:j.offsetWidth,duration:b/3},easing:"easeInOutQuad"})}})},onComplete:function(j,k){console.log("Element has being completed.")}}});h.enterViewport(function(){f.reveal();h.destroy()});var e=document.getElementById("rev-2"),i=scrollMonitor.create(e,-(e.offsetHeight)),c=1200,g=new RevealFx(e,{revealSettings:{direction:"tb",bgcolor:"#212121",duration:c/3,easing:"easeInOutCirc",coverArea:100,revealWidth:"12px",onCover:function(j,k){console.log("Element has being covered.");anime({targets:k,width:{value:j.offsetWidth,duration:c/3,},easing:"easeInOutQuad",complete:function(){j.style.opacity=1;anime({targets:k,width:{value:0,duration:c/3},translateX:{value:j.offsetWidth,duration:c/3},easing:"easeInOutQuad"})}})},onComplete:function(j,k){console.log("Element has being completed.")}}});i.enterViewport(function(){g.reveal();i.destroy()})}})(jQuery);