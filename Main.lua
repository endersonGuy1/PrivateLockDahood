local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\191\254","\200\145\208\37\172"),function(v42) if (v9(v42,2)==79) then local v93=0;while true do if (v93==0) then v30=v8(v11(v42,1,1));return "";end end else local v94=0;local v95;while true do if (v94==0) then v95=v10(v8(v42,16));if v30 then local v117=0;local v118;while true do if (v117==1) then return v118;end if (v117==0) then v118=v13(v95,v30);v30=nil;v117=1;end end else return v95;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v96=0;local v97;while true do if (v96==0) then v97=(v43/(2^(v44-1)))%((5 -3)^(((v45-1) -(v44-1)) + (2 -1))) ;return v97-(v97%1) ;end end else local v98=2^(v44-1) ;return (((v43%(v98 + v98))>=v98) and 1) or 0 ;end end local function v32() local v46=v9(v27,v29,v29);v29=v29 + 1 ;return v46;end local function v33() local v47,v48=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;return (v48 * 256) + v47 ;end local function v34() local v49=0;local v50;local v51;local v52;local v53;while true do if (0==v49) then v50,v51,v52,v53=v9(v27,v29,v29 + (5 -2) );v29=v29 + 4 ;v49=1;end if (1==v49) then return (v53 * 16777216) + (v52 * 65536) + (v51 * 256) + v50 ;end end end local function v35() local v54=0;local v55;local v56;local v57;local v58;local v59;local v60;while true do if (v54==0) then v55=v34();v56=v34();v54=1;end if (v54==3) then if (v59==0) then if (v58==0) then return v60 * 0 ;else local v119=0;while true do if (v119==0) then v59=1;v57=0;break;end end end elseif (v59==2047) then return ((v58==0) and (v60 * ((620 -(555 + 64))/0))) or (v60 * NaN) ;end return v16(v60,v59-(1954 -(857 + 74)) ) * (v57 + (v58/(2^52))) ;end if (v54==1) then v57=1;v58=(v31(v56,1,20) * (2^32)) + v55 ;v54=2;end if (v54==2) then v59=v31(v56,21,31);v60=((v31(v56,32)==(2 -1)) and  -1) or 1 ;v54=3;end end end local function v36(v61) local v62;if  not v61 then v61=v34();if (v61==0) then return "";end end v62=v11(v27,v29,(v29 + v61) -1 );v29=v29 + v61 ;local v63={};for v77=1, #v62 do v63[v77]=v10(v9(v11(v62,v77,v77)));end return v14(v63);end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v64=0;local v65;local v66;local v67;local v68;local v69;local v70;while true do if (v64==0) then v65={};v66={};v67={};v68={v65,v66,nil,v67};v64=1;end if (1==v64) then v69=v34();v70={};for v102=1,v69 do local v103=v32();local v104;if (v103==1) then v104=v32()~=0 ;elseif (v103==2) then v104=v35();elseif (v103==3) then v104=v36();end v70[v102]=v104;end v68[3]=v32();v64=2;end if (v64==2) then for v106=1,v34() do local v107=0;local v108;while true do if (v107==0) then v108=v32();if (v31(v108,1,1)==0) then local v120=0;local v121;local v122;local v123;while true do if (v120==0) then v121=v31(v108,2,3);v122=v31(v108,4,6);v120=1;end if (v120==2) then if (v31(v122,1,1)==1) then v123[2]=v70[v123[1639 -(1523 + 114) ]];end if (v31(v122,2,2 + 0 )==(1 -0)) then v123[3]=v70[v123[3]];end v120=3;end if (v120==1) then v123={v33(),v33(),nil,nil};if (v121==0) then v123[3]=v33();v123[4]=v33();elseif (v121==1) then v123[3]=v34();elseif (v121==2) then v123[3]=v34() -(2^16) ;elseif (v121==3) then local v371=0;while true do if (v371==0) then v123[880 -(282 + 595) ]=v34() -(2^16) ;v123[4]=v33();break;end end end v120=2;end if (v120==3) then if (v31(v122,3,3)==1) then v123[4]=v70[v123[4]];end v65[v106]=v123;break;end end end break;end end end for v109=1,v34() do v66[v109-1 ]=v39();end return v68;end end end local function v40(v71,v72,v73) local v74=v71[1];local v75=v71[2];local v76=v71[3];return function(...) local v79=v74;local v80=v75;local v81=v76;local v82=v38;local v83=1;local v84= -1;local v85={};local v86={...};local v87=v20("#",...) -1 ;local v88={};local v89={};for v99=0,v87 do if (v99>=v81) then v85[v99-v81 ]=v86[v99 + (1066 -(68 + 997)) ];else v89[v99]=v86[v99 + 1 ];end end local v90=(v87-v81) + 1 ;local v91;local v92;while true do local v100=0;while true do if (0==v100) then v91=v79[v83];v92=v91[1];v100=1;end if (v100==1) then if (v92<=(1288 -(226 + 1044))) then if (v92<=8) then if (v92<=3) then if (v92<=1) then if (v92>0) then local v133=0;local v134;local v135;while true do if (v133==1) then v89[v134 + 1 ]=v135;v89[v134]=v135[v91[121 -(32 + 85) ]];break;end if (v133==0) then v134=v91[8 -6 ];v135=v89[v91[3]];v133=1;end end else for v208=v91[2],v91[3 + 0 ] do v89[v208]=nil;end end elseif (v92==2) then v89[v91[2]]=v91[1 + 2 ] + v89[v91[4]] ;else v89[v91[2]]={};end elseif (v92<=5) then if (v92==(961 -(892 + 65))) then v89[v91[2]]=v89[v91[3]];else local v140=v91[2];local v141,v142=v82(v89[v140](v89[v140 + (2 -1) ]));v84=(v142 + v140) -(1 -0) ;local v143=0;for v210=v140,v84 do local v211=0;while true do if (v211==0) then v143=v143 + 1 ;v89[v210]=v141[v143];break;end end end end elseif (v92<=6) then v89[v91[2]]=v89[v91[4 -1 ]][v91[4]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v73[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]][v91[4]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v73[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[352 -(87 + 263) ]]=v89[v91[3]][v91[4]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v73[v91[3]];v83=v83 + 1 ;v91=v79[v83];if  not v89[v91[182 -(67 + 113) ]] then v83=v83 + 1 ;else v83=v91[3];end elseif (v92>7) then if  not v89[v91[2]] then v83=v83 + 1 + 0 ;else v83=v91[3];end else local v233=0;local v234;while true do if (v233==0) then v234=v91[2];v89[v234](v21(v89,v234 + 1 ,v84));break;end end end elseif (v92<=13) then if (v92<=10) then if (v92>9) then v89[v91[2]]=v89[v91[3]][v91[4]];else local v152=v91[2];local v153,v154=v82(v89[v152](v21(v89,v152 + 1 ,v91[3])));v84=(v154 + v152) -1 ;local v155=0;for v212=v152,v84 do v155=v155 + 1 ;v89[v212]=v153[v155];end end elseif (v92<=11) then local v156=v91[2];v89[v156]=v89[v156](v21(v89,v156 + 1 ,v84));elseif (v92==12) then v89[v91[2]]=v89[v91[3]]%v91[4] ;else local v236;local v237;local v238;local v239;local v240;local v241;local v242,v243;local v244;local v245;v89[v91[4 -2 ]]=v73[v91[3]];v83=v83 + 1 ;v91=v79[v83];v245=v91[2];v244=v89[v91[3 + 0 ]];v89[v245 + 1 ]=v244;v89[v245]=v244[v91[4]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v245=v91[2];v242,v243=v82(v89[v245](v21(v89,v245 + (3 -2) ,v91[3])));v84=(v243 + v245) -1 ;v241=0;for v298=v245,v84 do local v299=0;while true do if (v299==0) then v241=v241 + 1 ;v89[v298]=v242[v241];break;end end end v83=v83 + 1 ;v91=v79[v83];v245=v91[954 -(802 + 150) ];v89[v245]=v89[v245](v21(v89,v245 + (2 -1) ,v84));v83=v83 + (1 -0) ;v91=v79[v83];v89[v91[2]]=v89[v91[3]][v91[4]];v83=v83 + 1 ;v91=v79[v83];v245=v91[2];v244=v89[v91[3]];v89[v245 + 1 ]=v244;v89[v245]=v244[v91[4]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3 + 0 ]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[1000 -(915 + 82) ];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v245=v91[2];v242,v243=v82(v89[v245](v21(v89,v245 + 1 ,v91[8 -5 ])));v84=(v243 + v245) -1 ;v241=0;for v300=v245,v84 do v241=v241 + 1 + 0 ;v89[v300]=v242[v241];end v83=v83 + (1 -0) ;v91=v79[v83];v245=v91[1189 -(1069 + 118) ];v89[v245](v21(v89,v245 + 1 ,v84));v83=v83 + 1 ;v91=v79[v83];v245=v91[2];v240={};for v303=1, #v88 do local v304=0;while true do if (v304==0) then v239=v88[v303];for v389=0 -0 , #v239 do v238=v239[v389];v237=v238[1];v236=v238[3 -1 ];if ((v237==v89) and (v236>=v245)) then local v402=0;while true do if (v402==0) then v240[v236]=v237[v236];v238[1]=v240;break;end end end end break;end end end v83=v83 + 1 ;v91=v79[v83];v83=v91[3];end elseif (v92<=15) then if (v92==14) then local v158=0;local v159;local v160;local v161;local v162;while true do if (1==v158) then v83=v83 + 1 ;v91=v79[v83];v162=v91[2];v89[v162]=v89[v162](v21(v89,v162 + 1 + 0 ,v91[3]));v158=2;end if (v158==6) then if (v89[v91[2 + 0 ]]==v91[4]) then v83=v83 + 1 ;else v83=v91[3];end break;end if (0==v158) then v159=nil;v160,v161=nil;v162=nil;v89[v91[2]]=v91[3];v158=1;end if (v158==2) then v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + 1 ;v158=3;end if (3==v158) then v91=v79[v83];v162=v91[2];v160,v161=v82(v89[v162](v21(v89,v162 + 1 ,v91[3])));v84=(v161 + v162) -(1 -0) ;v158=4;end if (4==v158) then v159=0;for v356=v162,v84 do local v357=0;while true do if (v357==0) then v159=v159 + 1 ;v89[v356]=v160[v159];break;end end end v83=v83 + 1 ;v91=v79[v83];v158=5;end if (v158==5) then v162=v91[2];v89[v162]=v89[v162](v21(v89,v162 + 1 ,v84));v83=v83 + 1 ;v91=v79[v83];v158=6;end end else local v163=0;local v164;local v165;local v166;local v167;local v168;while true do if (v163==3) then v91=v79[v83];v89[v91[2]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]];v163=4;end if (v163==0) then v164=nil;v165=nil;v166,v167=nil;v168=nil;v89[v91[2]]=v72[v91[3]];v163=1;end if (v163==1) then v83=v83 + (792 -(368 + 423)) ;v91=v79[v83];v89[v91[2]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v163=2;end if (v163==5) then v168=v91[2];v166,v167=v82(v89[v168](v21(v89,v168 + 1 ,v91[3])));v84=(v167 + v168) -1 ;v165=0;for v358=v168,v84 do v165=v165 + 1 ;v89[v358]=v166[v165];end v163=6;end if (v163==6) then v83=v83 + 1 ;v91=v79[v83];v168=v91[2];v164=v89[v168];for v361=v168 + 1 ,v84 do v15(v164,v89[v361]);end break;end if (4==v163) then v83=v83 + 1 ;v91=v79[v83];for v362=v91[2],v91[3] do v89[v362]=nil;end v83=v83 + 1 ;v91=v79[v83];v163=5;end if (v163==2) then v89[v91[2]]=v72[v91[9 -6 ]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]={};v83=v83 + 1 ;v163=3;end end end elseif (v92<=16) then v89[v91[2]]= #v89[v91[21 -(10 + 8) ]];elseif (v92>17) then local v261=0;local v262;while true do if (v261==0) then v262=v91[2];do return v89[v262](v21(v89,v262 + 1 ,v91[3]));end break;end end else local v263=0;local v264;while true do if (v263==0) then v264=v91[2];do return v21(v89,v264,v84);end break;end end end elseif (v92<=28) then if (v92<=23) then if (v92<=(76 -56)) then if (v92==19) then local v170=0;local v171;local v172;local v173;while true do if (v170==2) then if (v172>0) then if (v173<=v89[v171 + 1 ]) then v83=v91[3];v89[v171 + 3 ]=v173;end elseif (v173>=v89[v171 + (443 -(416 + 26)) ]) then v83=v91[9 -6 ];v89[v171 + 3 ]=v173;end break;end if (0==v170) then v171=v91[2];v172=v89[v171 + 2 ];v170=1;end if (1==v170) then v173=v89[v171] + v172 ;v89[v171]=v173;v170=2;end end else v89[v91[2]]=v72[v91[3]];end elseif (v92<=21) then local v176=v80[v91[2 + 1 ]];local v177;local v178={};v177=v18({},{[v7("\179\15\165\167\47\137\40","\75\236\80\204\201")]=function(v215,v216) local v217=v178[v216];return v217[1 -0 ][v217[2]];end,[v7("\180\77\79\114\146\247\125\235\142\106","\143\235\18\33\23\229\158\19")]=function(v218,v219,v220) local v221=0;local v222;while true do if (0==v221) then v222=v178[v219];v222[1][v222[2]]=v220;break;end end end});for v223=1,v91[4] do v83=v83 + 1 ;local v224=v79[v83];if (v224[1]==4) then v178[v223-1 ]={v89,v224[3]};else v178[v223-(439 -(145 + 293)) ]={v72,v224[1489 -(998 + 488) ]};end v88[ #v88 + 1 ]=v178;end v89[v91[1 + 1 ]]=v40(v176,v177,v73);elseif (v92>22) then local v265=0;local v266;local v267;local v268;while true do if (v265==0) then v266=v91[2];v267=v89[v266];v265=1;end if (v265==1) then v268=v89[v266 + 2 ];if (v268>0) then if (v267>v89[v266 + 1 ]) then v83=v91[3 + 0 ];else v89[v266 + 3 ]=v267;end elseif (v267<v89[v266 + 1 ]) then v83=v91[3];else v89[v266 + 3 ]=v267;end break;end end else local v269;local v270,v271;local v272;v89[v91[774 -(201 + 571) ]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[1140 -(116 + 1022) ]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]] + v91[4] ;v83=v83 + 1 ;v91=v79[v83];v272=v91[2];v270,v271=v82(v89[v272](v21(v89,v272 + 1 ,v91[12 -9 ])));v84=(v271 + v272) -1 ;v269=0;for v341=v272,v84 do local v342=0;while true do if (v342==0) then v269=v269 + 1 ;v89[v341]=v270[v269];break;end end end v83=v83 + 1 ;v91=v79[v83];v272=v91[2 + 0 ];v89[v272]=v89[v272](v21(v89,v272 + 1 ,v84));v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[7 -5 ]]=v72[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]= #v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]]%v89[v91[4]] ;v83=v83 + 1 ;v91=v79[v83];v89[v91[7 -5 ]]=v91[3] + v89[v91[4]] ;v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]= #v89[v91[3]];v83=v83 + (860 -(814 + 45)) ;v91=v79[v83];v89[v91[2]]=v89[v91[3]]%v89[v91[4]] ;v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[7 -4 ] + v89[v91[4]] ;v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]] + v91[4] ;v83=v83 + 1 + 0 ;v91=v79[v83];v272=v91[2];v270,v271=v82(v89[v272](v21(v89,v272 + 1 ,v91[3])));v84=(v271 + v272) -1 ;v269=0;for v343=v272,v84 do v269=v269 + 1 ;v89[v343]=v270[v269];end v83=v83 + 1 ;v91=v79[v83];v272=v91[2];v270,v271=v82(v89[v272](v21(v89,v272 + 1 ,v84)));v84=(v271 + v272) -1 ;v269=0;for v346=v272,v84 do v269=v269 + 1 ;v89[v346]=v270[v269];end v83=v83 + 1 ;v91=v79[v83];v272=v91[2];v89[v272]=v89[v272](v21(v89,v272 + 1 ,v84));v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]]%v91[4] ;v83=v83 + 1 ;v91=v79[v83];v272=v91[2];v270,v271=v82(v89[v272](v89[v272 + 1 ]));v84=(v271 + v272) -(1 + 0) ;v269=885 -(261 + 624) ;for v349=v272,v84 do local v350=0;while true do if (v350==0) then v269=v269 + (1 -0) ;v89[v349]=v270[v269];break;end end end v83=v83 + 1 ;v91=v79[v83];v272=v91[2];v89[v272](v21(v89,v272 + 1 ,v84));end elseif (v92<=25) then if (v92==24) then local v180=v91[2];local v181,v182=v82(v89[v180](v21(v89,v180 + (1081 -(1020 + 60)) ,v84)));v84=(v182 + v180) -1 ;local v183=1423 -(630 + 793) ;for v226=v180,v84 do v183=v183 + 1 ;v89[v226]=v181[v183];end else v89[v91[2]]=v91[3];end elseif (v92<=(87 -61)) then v89[v91[2]]=v89[v91[3]]%v89[v91[4]] ;elseif (v92==27) then do return;end else do return v89[v91[2]]();end end elseif (v92<=33) then if (v92<=30) then if (v92>29) then local v187=v91[9 -7 ];local v188=v89[v187];for v229=v187 + 1 ,v84 do v15(v188,v89[v229]);end else local v189=0;local v190;while true do if (v189==0) then v190=v91[2];v89[v190]=v89[v190](v21(v89,v190 + 1 ,v91[3]));break;end end end elseif (v92<=31) then if (v89[v91[2]]==v91[4]) then v83=v83 + 1 ;else v83=v91[2 + 1 ];end elseif (v92>32) then v89[v91[2]]=v40(v80[v91[3]],nil,v73);elseif v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=35) then if (v92==34) then local v191=v91[2];local v192={};for v230=1, #v88 do local v231=v88[v230];for v285=0, #v231 do local v286=0;local v287;local v288;local v289;while true do if (1==v286) then v289=v287[2];if ((v288==v89) and (v289>=v191)) then local v399=0;while true do if (v399==0) then v192[v289]=v288[v289];v287[1]=v192;break;end end end break;end if (v286==0) then v287=v231[v285];v288=v287[1];v286=1;end end end end else v89[v91[2]]=v73[v91[3]];end elseif (v92<=36) then local v195;local v196;local v197;v89[v91[2]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v89[v91[6 -4 ]]= #v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[1749 -(760 + 987) ]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v197=v91[2];v196=v89[v197];v195=v89[v197 + 2 ];if (v195>0) then if (v196>v89[v197 + 1 ]) then v83=v91[3];else v89[v197 + 3 ]=v196;end elseif (v196<v89[v197 + 1 ]) then v83=v91[3];else v89[v197 + 3 ]=v196;end elseif (v92>37) then v89[v91[2]]=v89[v91[1916 -(1789 + 124) ]] + v91[4] ;else v83=v91[3];end v83=v83 + 1 ;break;end end end end;end return v40(v39(),{},v28)(...);end return v23("LOL!043O0003063O00737472696E6703053O006D6174636803083O00746F6E756D62657203053O007063612O6C000D3O0012233O00013O00200A5O0002001223000100033O001223000200043O00061500033O000100042O00043O00014O00048O00043O00024O00043O00034O0004000400034O001C000400014O001100046O001B3O00013O00013O00043O00027O004003053O003A25642B3A2O033O0025642B026O00F03F001B3O0002218O000F00018O000200016O000300016O00048O000500026O00068O000700076O000500076O00043O000100200A00040004000100120E000500026O00030005000200122O000400036O000200046O00013O000200262O00010017000100040004253O001700012O000400016O000300026O0012000100024O001100015O0004253O001A00012O0014000100034O001C000100014O001100016O001B3O00013O00013O00133O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E7365727403043O0067616D65030B3O0046696E645365727669636503113O00E3C6CB29EFB8C60AD4C7E831E9A9C619D403083O007EB1A3BB4586DBA703093O004D61696E4576656E74030A3O0046697265536572766572030B3O000CC32FE8F331C81ECCF12603053O009C43AD4AA5026O00F03F012A3O0006203O002800013O0004253O00280001001223000100013O00200600010001000200122O000200013O00202O00020002000300122O000300013O00202O00030003000400122O000400053O00062O0004000C000100010004253O000C0001001223000400063O00200A000500040007001223000600083O00200A000600060009001223000700083O00200A00070007000A00061500083O000100062O00043O00074O00043O00014O00043O00054O00043O00024O00043O00034O00043O00063O00120D0009000B3O00202O00090009000C4O000B00083O00122O000C000D3O00122O000D000E6O000B000D6O00093O000200202O00090009000F00202O0009000900104O000B00083O00122O000C00113O00122O000D00126O000B000D6O00093O00014O00015O00044O0029000100200A00013O00132O001B3O00013O00013O00033O00028O00026O00F03F026O00704002453O001219000200016O000300043O00261F0002003E000100020004253O003E0001001219000500013O00261F00050005000100010004253O0005000100261F00030034000100010004253O00340001001219000600013O00261F0006000E000100020004253O000E0001001219000300023O0004253O0034000100261F0006000A000100010004253O000A00012O000300076O0024000400073O00122O000700026O00085O00122O000900023O00042O0007003200012O0014000B6O0016000C00046O000D00016O000E00026O000F00036O001000046O00118O0012000A3O00202O0013000A00024O001000136O000F3O00024O001000036O001100046O001200016O001300016O0013000A001300102O0013000200134O001400016O0014000A001400102O00140002001400202O0014001400024O001100146O00108O000E3O000200202O000E000E00034O000D000E6O000B3O0001000413000700160001001219000600023O0004253O000A000100261F00030004000100020004253O000400012O0014000600054O0004000700044O0012000600074O001100065O0004253O000400010004253O000500010004253O000400010004253O0044000100261F00020002000100010004253O00020001001219000300016O000400043O001219000200023O0004253O000200012O001B3O00017O00",v17(),...);
-- âš ï¸ WARNING: integrity protected!
--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.6) ~  Much Love, Ferib 

]]--