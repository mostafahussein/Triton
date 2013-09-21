/*
 * Chartkick.js
 * Create beautiful Javascript charts with minimal code
 * https://github.com/ankane/chartkick.js
 * v1.1.0
 * MIT License
 */
/*jslint browser: true, indent: 2, plusplus: true */
/*global google, $*/
(function(){function a(a){return Object.prototype.toString.call(a)==="[object Array]"}function b(a){return a instanceof Object}function c(d,e){var f;for(f in e)b(e[f])||a(e[f])?(b(e[f])&&!b(d[f])&&(d[f]={}),a(e[f])&&!a(d[f])&&(d[f]=[]),c(d[f],e[f])):e[f]!==undefined&&(d[f]=e[f])}function d(a,b){var d={};return c(d,a),c(d,b),d}function g(a){var b,c,d,g,h,i,j,k,l,m,n;m=Object.prototype.toString.call(a);if(m==="[object Date]")return a;if(m!=="[object String]")return;if(d=a.match(e))return n=parseInt(d[1],10),i=parseInt(d[3],10)-1,b=parseInt(d[5],10),c=parseInt(d[7],10),h=d[9]?parseInt(d[9],10):0,l=d[11]?parseInt(d[11],10):0,g=d[12]?parseFloat(f+d[12].slice(1))*1e3:0,k=Date.UTC(n,i,b,c,h,l,g),d[13]&&d[14]&&(j=d[15]*60,d[17]&&(j+=parseInt(d[17],10)),j*=d[14]==="-"?-1:1,k-=j*60*1e3),new Date(k)}function h(a){var b,c,d;for(b=0;b<a.length;b++){d=a[b].data;for(c=0;c<d.length;c++)if(d[c][1]<0)return!0}return!1}function i(a,b,c,e){return function(f,g,i){var j=d({},a);return j=d(j,i||{}),g.hideLegend&&b(j),"min"in g?c(j,g.min):h(f)||c(j,0),"max"in g&&e(j,g.max),j=d(j,g.library||{}),j}}function z(a,b){document.body.innerText?a.innerText=b:a.textContent=b}function A(a,b){z(a,"Error Loading Chart: "+b),a.style.color="#ff0000"}function B(a,b,c){$.ajax({dataType:"json",url:b,success:c,error:function(b,c,d){var e=typeof d=="string"?d:d.message;A(a,e)}})}function C(a,b,c,d){try{d(a,b,c)}catch(e){throw A(a,e.message),e}}function D(a,b,c,d){typeof b=="string"?B(a,b,function(b,e,f){C(a,b,c,d)}):C(a,b,c,d)}function E(a){return""+a}function F(a){return parseFloat(a)}function G(a){if(typeof a!="object")if(typeof a=="number")a=new Date(a*1e3);else{var b=a.replace(/ /,"T").replace(" ","").replace("UTC","Z");a=g(b)||new Date(a)}return a}function H(b){if(!a(b)){var c=[],d;for(d in b)b.hasOwnProperty(d)&&c.push([d,b[d]]);b=c}return b}function I(a,b){return a[0].getTime()-b[0].getTime()}function J(b,c,d){var e,f,g,h,i;!a(b)||typeof b[0]!="object"||a(b[0])?(b=[{name:"Value",data:b}],c.hideLegend=!0):c.hideLegend=!1;for(e=0;e<b.length;e++){g=H(b[e].data),h=[];for(f=0;f<g.length;f++)i=g[f][0],i=d?G(i):E(i),h.push([i,F(g[f][1])]);d&&h.sort(I),b[e].data=h}return b}function K(a,b,c){j(a,J(b,c,!0),c)}function L(a,b,c){l(a,J(b,c,!1),c)}function M(a,b,c){var d=H(b),e;for(e=0;e<d.length;e++)d[e]=[E(d[e][0]),F(d[e][1])];k(a,d,c)}function N(a,b,c){m(a,J(b,c,!1),c)}function O(a,b,c){n(a,J(b,c,!0),c)}function P(a,b,c,d){typeof a=="string"&&(a=document.getElementById(a)),D(a,b,c||{},d)}"use strict";var e=/(\d\d\d\d)(\-)?(\d\d)(\-)?(\d\d)(T)?(\d\d)(:)?(\d\d)?(:)?(\d\d)?([\.,]\d+)?($|Z|([\+\-])(\d\d)(:)?(\d\d)?)/i,f=String(1.5).charAt(1),j,k,l,m,n;if("Highcharts"in window){var o={chart:{},xAxis:{labels:{style:{fontSize:"12px"}}},yAxis:{title:{text:null},labels:{style:{fontSize:"12px"}}},title:{text:null},credits:{enabled:!1},legend:{borderWidth:0},tooltip:{style:{fontSize:"12px"}},plotOptions:{areaspline:{},series:{marker:{}}}},p=function(a){a.legend.enabled=!1},q=function(a,b){a.yAxis.min=b},r=function(a,b){a.yAxis.max=b},s=i(o,p,q,r);j=function(a,b,c,d){d=d||"spline";var e={};d==="areaspline"&&(e={plotOptions:{areaspline:{stacking:"normal"},series:{marker:{enabled:!1}}}});var f=s(b,c,e),g,h,i;f.xAxis.type="datetime",f.chart.type=d,f.chart.renderTo=a.id;for(h=0;h<b.length;h++){g=b[h].data;for(i=0;i<g.length;i++)g[i][0]=g[i][0].getTime();b[h].marker={symbol:"circle"}}f.series=b,new Highcharts.Chart(f)},k=function(a,b,c){var e=d(o,c.library||{});e.chart.renderTo=a.id,e.series=[{type:"pie",name:"Value",data:b}],new Highcharts.Chart(e)},l=function(a,b,c,d){d=d||"column";var e=s(b,c),f,g,h,i,j=[];e.chart.type=d,e.chart.renderTo=a.id;for(f=0;f<b.length;f++){h=b[f];for(g=0;g<h.data.length;g++)i=h.data[g],j[i[0]]||(j[i[0]]=new Array(b.length)),j[i[0]][f]=i[1]}var k=[];for(f in j)j.hasOwnProperty(f)&&k.push(f);e.xAxis.categories=k;var l=[];for(f=0;f<b.length;f++){i=[];for(g=0;g<k.length;g++)i.push(j[k[g]][f]||0);l.push({name:b[f].name,data:i})}e.series=l,new Highcharts.Chart(e)},m=function(a,b,c){l(a,b,c,"bar")},n=function(a,b,c){j(a,b,c,"areaspline")}}else if("google"in window){var t=!1;google.setOnLoadCallback(function(){t=!0}),google.load("visualization","1.0",{packages:["corechart"]});var u=function(a){google.setOnLoadCallback(a),t&&a()},o={chartArea:{},fontName:"'Lucida Grande', 'Lucida Sans Unicode', Verdana, Arial, Helvetica, sans-serif",pointSize:6,legend:{textStyle:{fontSize:12,color:"#444"},alignment:"center",position:"right"},curveType:"function",hAxis:{textStyle:{color:"#666",fontSize:12},gridlines:{color:"transparent"},baselineColor:"#ccc",viewWindow:{}},vAxis:{textStyle:{color:"#666",fontSize:12},baselineColor:"#ccc",viewWindow:{}},tooltip:{textStyle:{color:"#666",fontSize:12}}},p=function(a){a.legend.position="none"},q=function(a,b){a.vAxis.viewWindow.min=b},r=function(a,b){a.vAxis.viewWindow.max=b},v=function(a,b){a.hAxis.viewWindow.min=b},w=function(a,b){a.hAxis.viewWindow.max=b},s=i(o,p,q,r),x=function(a,b){var c=new google.visualization.DataTable;c.addColumn(b,"");var d,e,f,g,h,i=[];for(d=0;d<a.length;d++){f=a[d],c.addColumn("number",f.name);for(e=0;e<f.data.length;e++)g=f.data[e],h=b==="datetime"?g[0].getTime():g[0],i[h]||(i[h]=new Array(a.length)),i[h][d]=F(g[1])}var j=[];for(d in i)i.hasOwnProperty(d)&&j.push([b==="datetime"?new Date(F(d)):d].concat(i[d]));return b==="datetime"&&j.sort(I),c.addRows(j),c},y=function(a){window.attachEvent?window.attachEvent("onresize",a):window.addEventListener&&window.addEventListener("resize",a,!0),a()};j=function(a,b,c){u(function(){var d=s(b,c),e=x(b,"datetime"),f=new google.visualization.LineChart(a);y(function(){f.draw(e,d)})})},k=function(a,b,c){u(function(){var e={chartArea:{top:"10%",height:"80%"}},f=d(d(o,e),c.library||{}),g=new google.visualization.DataTable;g.addColumn("string",""),g.addColumn("number","Value"),g.addRows(b);var h=new google.visualization.PieChart(a);y(function(){h.draw(g,f)})})},l=function(a,b,c){u(function(){var d=s(b,c),e=x(b,"string"),f=new google.visualization.ColumnChart(a);y(function(){f.draw(e,d)})})},m=function(a,b,c){u(function(){var d={hAxis:{gridlines:{color:"#ccc"}}},e=i(o,p,v,w)(b,c,d),f=x(b,"string"),g=new google.visualization.BarChart(a);y(function(){g.draw(f,e)})})},n=function(a,b,c){u(function(){var d={isStacked:!0,pointSize:0,areaOpacity:.5},e=s(b,c,d),f=x(b,"datetime"),g=new google.visualization.AreaChart(a);y(function(){g.draw(f,e)})})}}else j=k=l=m=n=function(){throw new Error("Please install Google Charts or Highcharts")};var Q={LineChart:function(a,b,c){P(a,b,c,K)},PieChart:function(a,b,c){P(a,b,c,M)},ColumnChart:function(a,b,c){P(a,b,c,L)},BarChart:function(a,b,c){P(a,b,c,N)},AreaChart:function(a,b,c){P(a,b,c,O)}};window.Chartkick=Q})();