(function(){setTimeout(a,1000);function a(){document.body.classList.remove("loading");var f=document.getElementById("rev-1"),n=scrollMonitor.create(f,-(f.offsetHeight)),b=1200,j=new RevealFx(f,{revealSettings:{direction:"tb",bgcolor:"#212121",duration:b/3,easing:"easeInOutCirc",coverArea:100,revealWidth:"12px",onCover:function(r,s){console.log("Element has being covered.");anime({targets:s,width:{value:r.offsetWidth,duration:b/3,},easing:"easeInOutQuad",complete:function(){r.style.opacity=1;anime({targets:s,width:{value:0,duration:b/3},translateX:{value:r.offsetWidth,duration:b/3},easing:"easeInOutQuad"})}})},onComplete:function(r,s){console.log("Element has being completed.")}}});n.enterViewport(function(){j.reveal();n.destroy()});var g=document.getElementById("rev-2"),o=scrollMonitor.create(g,-(g.offsetHeight)),c=1200,k=new RevealFx(g,{revealSettings:{direction:"tb",bgcolor:"#212121",duration:c/3,easing:"easeInOutCirc",coverArea:100,revealWidth:"12px",onCover:function(r,s){console.log("Element has being covered.");anime({targets:s,width:{value:r.offsetWidth,duration:c/3,},easing:"easeInOutQuad",complete:function(){r.style.opacity=1;anime({targets:s,width:{value:0,duration:c/3},translateX:{value:r.offsetWidth,duration:c/3},easing:"easeInOutQuad"})}})},onComplete:function(r,s){console.log("Element has being completed.")}}});o.enterViewport(function(){k.reveal();o.destroy()});var h=document.getElementById("rev-3"),p=scrollMonitor.create(h,-(h.offsetHeight)),d=1200,l=new RevealFx(h,{revealSettings:{direction:"tb",bgcolor:"#212121",duration:c/3,easing:"easeInOutCirc",coverArea:100,revealWidth:"12px",onCover:function(r,s){console.log("Element has being covered.");anime({targets:s,width:{value:r.offsetWidth,duration:c/3,},easing:"easeInOutQuad",complete:function(){r.style.opacity=1;anime({targets:s,width:{value:0,duration:c/3},translateX:{value:r.offsetWidth,duration:c/3},easing:"easeInOutQuad"})}})},onComplete:function(r,s){console.log("Element has being completed.")}}});p.enterViewport(function(){l.reveal();p.destroy()});var i=document.getElementById("rev-4"),q=scrollMonitor.create(i,-(i.offsetHeight)),e=1200,m=new RevealFx(i,{revealSettings:{direction:"tb",bgcolor:"#212121",duration:c/3,easing:"easeInOutCirc",coverArea:100,revealWidth:"12px",onCover:function(r,s){console.log("Element has being covered.");anime({targets:s,width:{value:r.offsetWidth,duration:c/3,},easing:"easeInOutQuad",complete:function(){r.style.opacity=1;anime({targets:s,width:{value:0,duration:c/3},translateX:{value:r.offsetWidth,duration:c/3},easing:"easeInOutQuad"})}})},onComplete:function(r,s){console.log("Element has being completed.")}}});q.enterViewport(function(){m.reveal();q.destroy()})}})(jQuery);