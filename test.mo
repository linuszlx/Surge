#!name = 去广告
#!desc = 重写去广告
#!author = linusz
#!category = 去广告


#!name=广告拦截合集-重写
#!desc=(R)针对部分APP和小程序广告进行拦截，某些APP要清除缓存或者重新安装拦截广告才会生效！
#!author=fmz200
#!homepage=https://github.com/fmz200/wool_scripts
#!icon=https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/gif/naisi-01.gif
#!raw-url=https://github.com/fmz200/wool_scripts/raw/main/QuantumultX/rewrite/chongxie.txt
#!tg-group=https://t.me/lanjieguanggao
#!date=2024-03-10 17:07:00
#!support=支持约511款APP/小程序
#!remark=下方的所有规则都标注了对应的hostname，可能存在错误或者遗漏，欢迎反馈。对于无法/可选MITM的hostname都特别做了“如开启可自行添加主机名”提示，如果提示后面没有标注主机名则包含所有主机名，否则只包含提示语后面的主机名。
#############################################
# "reject"        策略返回 HTTP 状态码 404,不附带任何额外内容
# "reject-200"    策略返回 HTTP 状态码 200,不附带任何额外内容
# "reject-img"    策略返回 HTTP 状态码 200,同时附带 1px gif
# "reject-dict"   策略返回 HTTP 状态码 200,同时附带一个空的 JSON 对象
# "reject-array"  策略返回 HTTP 状态码 200,同时附带一个空的 JSON 数组
#############################################
# 常见问题：
# 1️⃣：我知道规则，不知道主机名怎么办？
# ✅：几乎所有的主机名都是从规则中提取出来的，先有的规则再有的主机名
# 举个栗子：12306的一条规则URL👉🏻^https?:\/\/ad\.12306\.cn\/ad\/ser\/getAdList
# 只需要去掉反斜杠：^https?://ad.12306.cn/ad/ser/getAdList
# 不用再说了吧，ad.12306.cn就是想要的主机名
# 2️⃣：有些常用的软件为什么没有去广告配置？
# ✅：如果要利用重写去广告，就需要对请求或响应信息进行解密(MITM)，现在一些软件已经禁止了MITM，所以就无法去广告。
#############################################


# 去重后的hostname，将对以下域名进行MITM（MAN-IN-THE-MIDDLE：中间人攻击）
hostname = zlsdk.1rtb.net, delivery-api.imdada.cn, adservice.sigmob.cn, api.u51.com, gateway.36kr.com, xxyx-client-api.xiaoxiaoyouxuan.com, zgrb.epicc.com.cn, compus.xiaofubao.com, imgx.jampp.com, ad.life.360.cn, wanciwangdata.oss-cn-beijing.aliyuncs.com, recite.perfectlingo.com, *.cmvideo.cn, b-api.ins.miaopai.com, social.blued.cn, api.petkit.cn, ams-cdn.cdtft.cn, e.weather.com.cn, beehiveapi.58.com, apio.zhengqi100.com, res.hongyibo.com.cn, misc-api-prd-mx.wandafilm.com, e-static.aia.com.cn, api.sogaha.cn, magev6.if.qidian.com, api-miprint.hannto.com, api.indeedpower.com, alt-r.my.com, m.pvp.xoyo.com, *.pipix.com, daijia.kuaidadi.com, as.xiaojukeji.com, preprod.cdzghome.com, api.xbxxhz.com, api.petkit.cn, sfo.mddcloud.com.cn, mob.mddcloud.com.cn, toblog.ctobsnssdk.com, t-dsp.pinduoduo.com, mobads-pre-config.cdn.bcebos.com, sdk1xyajs.data.kuiniuca.com, conf-darwin.xycdn.com, *.ubixioe.com, www.xiaoxiongmeishu.com, gateway.benewtech.cn, open.e.kuaishou.cn, api-access.pangolin-sdk-toutiao-b.com, api-access.pangolin-sdk-toutiao.com, api-access.pangolin-sdk-toutiao1.com, dsp-x.jd.com, api-cfg.wtzw.com, p1-lm.adukwai.com, bk.bingo.qq.com, maicai.api.ddxq.mobi, c.zhangle.com, midc.cdn-static.abchina.com.cn, enjoy.cdn-static.abchina.com, ocrifs.ejoy.sinopec.com, apicloud.zol.com, minipro.95504.net, service.haiersmarthomes.com, gugongmini.dpm.org.cn, wechat.tf.cn, chl.tf.cn, mbasecc.bas.cmbchina.com, mbasecc.bcs.cmbchina.com, intellicc.bas.cmbchina.com, az1mbasecc.bas.cmbchina.com, bohe.sfo-tx-shanghai-01.saas.sensorsdata.cn, api.boohee.com, cdn.133.cn, acs.youku.com, push.m.youku.com, un-acs.youku.com, gw.alicdn.com, tiku.fenbi.com, napi.ithome.com, vapp.tmuyun.com, www.1314zhilv.com, mobile.flightradar24.com, api.17kjs.com, interface.aomiapp.com, oxadmin.cp.com.cn, home.umetrip.com, discardrp.umetrip.com, startup.umetrip.com, dictvip-business.youdao.com, dict.youdao.com, api-overmind.youdao.com, cdke.youdao.com, live.inst-service.htsc.com, gql.reddit.com, gql-fed.reddit.com, imcs.citicbank.com, mkt-gateway.tuhu.cn, tianqi.2345.com, shcss.suning.com, shcss.suning.com, one-app-h5.faw-vw.com, lens.leoao.com, www.binance.info, www.yingwangtech.net, www.binance.com, api.hengdianfilm.com, ump.sz.creditcard.ecitic.com, tbgapplet.carlsberg.asia, mbmodule-openapi.paas.cmbchina.com, api.zhihu.com, appcloud2.zhihu.com, m-cloud.zhihu.com, www.zhihu.com, zhuanlan.zhihu.com, open-cms-api.quark.cn, ftapi.10jqka.com.cn, vv.video.qq.com, wxa.wxs.qq.com, evs.500.com, dq.dxy.cn, m.you.163.com, open-cms-api.uc.cn, *.yuxueyuan.cn, pan-api.bitqiu.com, iapi.bishijie.com, run.api.qyfxgd.cn, gongdu.youshu.cc, api.21ec74.com, ztoread.ziroom.com, iphone.ac.qq.com, api.00bang.cn, app.hbooker.com, api.sfacg.com, api3.cls.cn, gateway-api.dushu365.com, bdsp-x.jd.com, dsp-x.jd.com, app.homeinns.com, pic.edaijia.cn, cdn-evone-ceph.echargenet.com, mlol.qt.qq.com, gg.caixin.com, mxsa.mxbc.net, cn-acs.m.cainiao.com, zjdr666.com, api.ahmobile.cn, gx.10086.cn, adapi.izuiyou.com, access.mypikpak.com, open.fitdays.cn, ap.dongqiudi.com, 103.91.210.141, js-ad.ayximgs.com, pzoap.moedot.com, pipi.4kya.com, tft-app.cdtft.cn, t1.market.xiaomi.com, b.appsimg.com, ios.sspai.com, zconfig.alibabausercontent.com, easyreadfs.nosdn.127.net, sp.kaola.com, mapi.dangdang.com, client.qunar.com, wap.ngchina.cn, *gaoqingdianshi.com, slapi.oray.net, api.internetofcity.cn, lcen.xiaote.net, venus.yhd.com, api.shenyin.name, mage*.if.qidian.com, e.dangdang.com, adproxy.autohome.com.cn, explorer.tratao.com, overseas.weico.cc, 118.178.214.118, client.mail.163.com, api.psy-1.com, cdn.*.chelaileapp.cn, *.laichon.com, app.ap.d3yuiw4.com, api-ad-product.huxiu.com, jad-api.jin10.com, appactive.1234567.com.cn, service.busi.inke.cn, dispatcher.camera360.com, toblog.volceapplog.com, 47.99.42.29, 47.97.215.55, 120.27.235.201, 47.110.187.87, ssp.soulapp.cn, 8.210.3.170, 47.75.72.47, api-account.soulapp.cn, api-global.soulapp.me, api-a.soulapp.cn, api-pay.soulapp.cn, gateway-mobile-gray.soulapp.cn, api-chat.soulapp.cn, post.soulapp.cn, api-user.soulapp.cn, api-account.soulapp.cn, ssp.soulapp.cn, beta-api.crunchyroll.com, helper.2bulu.com, api.weibo.cn, mapi.weibo.com, *.uve.weibo.com, new.vip.weibo.cn, tagit.hyhuo.com, top-widgets-api.xiaozujian.com, *mangaapi.manhuaren.*, apis.lifeweek.com.cn, yanxuan.nosdn.127.net, *.peopleapp.com, new-app-api.ylyk.com, *.58cdn.com.cn, creditcardapp.bankcomm.com, 116.85.2.15, 116.85.2.14, lchttpapi.xczim.com, *.chelaile.net.cn, api.xiaoyi.com, api.douban.com, sso.ifanr.com, s3plus.meituan.net, p*.meituan.net, www.meituan.com, cdb.meituan.com, img.rr.tv, *.hoopchina.com, goblin.hupu.com, lamb.lakala.com, wallet.lakala.com, hz.yxzq.com, testflight.apple.com, api.winbull8.com, editor.sm.cn, p0.pipi.cn, 182.92.244.70, ios-api.lucklyworld.com, www.onstar.com.cn, facade-api.black-unique.com, cstore-en-public-tx.seewo.com, oneapph5.dongfeng-nissan.com.cn, wap.js.10086.cn, cds.wifi188.com, homefront.qunar.com, sh-gateway.shihuo.cn, cgbank.oss-cn-shenzhen.aliyuncs.com, imeres.baidu.com, api.taptapdada.com, a.sinopecsales.com, api.nj.nbtv.cn, v3.wufazhuce.com, ma-adx.ctrip.com, yun.tuitiger.com, www.pushplus.plus, app-izz.zhengzhou.gov.can, ad.mcloud.139.com, fastbuyer.zbj.com, xhtz.oss-cn-guangzhou.aliyuncs.com, promote-trx.helipay.com, hfapp-service.qweather.net, api.ulife.group, api.sodalife.xyz, app.chinahxzq.com.cn, hdgateway.zto.com, mobile-api.imlaidian.com, wxs-weixin.sd.zhumanggroup.com, s.jiediankeji.com, smarket.dian.so, file.dian.so, aag.enmonster.com, hd.xiaojukeji.com, freight.xiaojukeji.com, capis*.didapinche.com, ad.xiaotucc.com, mapi.xiaotucc.com, adsoss.zhinengxiyifang.cn, api-marketing.zhinengxiyifang.cn, ads.zhinengxiyifang.cn, app.missevan.com, bd-api.kuwo.cn, h5app.kuwo.cn, bodianimgcdn.kuwo.cn, mgxhtj.kuwo.cn, nmobi.kuwo.cn, searchrecterm.kuwo.cn, audiobookpay.kuwo.cn, musicpay.kuwo.cn, vip1.kuwo.cn, pacdn.m.stock.pingan.com, manga.bilibili.com, bid.adview.cn, zua.zhidiantianxia.cn, app.10086.cn, *.app.coc.10086.cn, mrp.mcloud.139.com, *.i18n-pglstatp.com, api.wmpvp.com, m.prod.app.hsbcfts.com.cn, p*.pstatp.com, mapi.txcmapp.com, api-one-wscn.awtmt.com, fintechappdr.cgws.com, m.qianbao.qq.com, j1.pupuapi.com, ad.lofter.com, images.pinduoduo.com, lofter.lf127.net, client.tujia.com, www.gcores.com, app02.vgtime.com, www.vgtime.com, app.meruki.cn, qimg.cdnmama.com, 124.71.225.147, ecapi.lkcoffee.com, capi.lkcoffee.com, m.lkcoffee.com, gsp.gacmotor.com, appdmkj.5idream.net, www.onstar.com.cn, api.shanghaionstar.com, szdmobile.suzhou.gov.cn, ad.shunchangzhixing.com, api.bwton.com, z.onewo.com, plough.babytree.com, mapiweb.babytree.com, go.babytree.com, aimg.babytreeimg.com, wx.17u.cn, blog.nilbt.com, www.banyuetanapp.com, ecard.shenzhentong.com, ccmsupport-sz.tenpay.com, dl.app.gtja.com, fuwu.nhsa.gov.cn, api?.sparke.cn, cube.elemecdn.com, nr-op.elemecdn.com, home.mi.com, tk.lanjiyin.com.cn, poplayer.template.alibaba.com, acs.m.taobao.com, guide-acs.m.taobao.com, acs.m.taobao.com, mcs-mimp-web.sf-express.com, ucmp.sf-express.com, api.ncarzone.com, api.caiyunapp.com, wrapper.cyapi.cn, mres.aibank.com, direct.z-bank.com, mobile.1qianbao.com, middle.yun.139.com, mcmm.caiyun.feixin.10086.cn, cdn-oss.00bang.cn, mapi.sichuanair.com, b2baifanfan.baidu.com, app.badmintoncn.com, app.bilibili.com, api.bilibili.com, api.live.bilibili.com, grpc.biliapi.net, api.mos.csvw.com, portal.zjzwfw.gov.cn, shopapi.io.mi.com, www.ahzs10000.com, quanguo.mygolbs.com, open.taou.com, api.taou.com, track.mm.taou.com, sichuan.95504.net, app.10099.com.cn, sdk.alibaba.com.ailbaba.me, mrobot.pconline.com.cn, api.gameplus.qq.com, cdn.sdb.com.cn, creditcardapp.bankcomm.cn, creditcard.bankcomm.cn, router-app-api.jdcloud.com, api.yonghuivip.com, syh.zybang.com, cdn.jlbank.com.cn, 3g.csair.com, gha.ghac.cn, webappcfg.paas.cmbchina.com, *.qyfxgd.cn, *.weilai555.com, *.ecoliving168.com, vip7.fzwdyy.cn, wcprd.hilton.com.cn, adx-cn.anythinktech.com, www.didapinche.com, client-api-v2.oray.com, sdk.alibaba.com, bgw.xinyue.qq.com, api.tipsoon.com, imeclient.openspeech.cn, m15.360buyimg.com, img11.360buyimg.com, m.360buyimg.com, business-cdn.shouji.sogou.com, ios.sogou.com, android.sogou.com, h5api.sginput.qq.com, m*.amap.com, optimus-ads.amap.com, pv.elife.icbc.com.cn, mangaapi.manhuaren.com, api.chelaile.net.cn, news.ssp.qq.com, apple.xiangjiaoapps.com, ccsp-egmas.sf-express.com, zhidao.baidu.com, api.vistopia.com.cn, xyst.yuanfudao.com, mapi.appvipshop.com, guanyu.longfor.com, mp.weixin.qq.com, *.kingsoft-office-service.com, pic1.chelaile.net.cn, ptmpcap.caocaokeji.cn, pcauto.com.cn, mps.95508.com, subscription-service.neuralprisma.com, i-lq.snssdk.com.*, img0*.luckincoffeecdn.com, app.zhoudamozi.com, apple.fuliapps.com, gurd.snssdk.com.*, peisongapi.meituan.com, cdn.kuaidi100.com, cdn.cmgadx.com, api.gamer.com.tw, impservice.dictapp.youdao.com, api.gaoqingdianshi.com, cdn.dianshihome.com, *.kakamobi.cn, 47.100.65.202, youtubei.googleapis.com, app.wy.guahao.com, mapi.sfbest.com, hjapi.bjxkhc.com, *.xiangxiangapps.com, api.mddcloud.com, byteimg.com.*, cmsfile.wifi8.com, prom.mobile.gome.com.cn, nnapp.cloudbae.cn, api.21jingji.com, a.qiumibao.com, jdread-api.jd.com, open.qyer.com, app-api.niu.com, mrobot.buy.itunes.apple.com, web.chelaile.net.cn, us.l.qq.com, qde.qunar.com, mbs.boc.cn, res.pizzahut.com.cn, nmeditation.snailsleep.net, book.img.ireader.com, gd.10086.cn, aes.acfun.cn, api-new.app.acfun.cn, images.cib.com.cn, jiucaigongshe.oss-cn-beijing.aliyuncs.com, mage.if.qidian.com, app.aa-ab.com, zone.guiderank-app.com, richmanrules.ksedt.com, richmanapi.jxedt.com, geetest.htsc.com, 119.29.29.98, api.m.mi.com, awg.enmonster.com, api.haohaozhu.cn, du.hupucdn.com, yxyapi*.drcuiyutao.com, apps.api.ke.com, api.ycapp.yiche.com, omgup*.xiaojukeji.com, issuecdn.baidupcs.com, gab.122.gov.cn, www.oschina.net, m.ibuscloud.com, app.api.versa-ai.com, ok.166.net, image*.benlailife.com, home.mi.com, djcapp.game.qq.com, static.xyzq.cn, iobs.pingan.com.cn, app3.qdaily.com, api.mcd.cn, api.mgzf.com, open.e.kuaishou.com, osg-static.sgcc.com.cn, app.dewu.com, 101.201.175.228, cdn.poizon.com, www.youtube.com, s.youtube.com, supportda.ofo.com, r6.mo.baidu.com, res.mi.baidu.com, mbd.baidu.com, www.bing.com, capi.mwee.cn, m.client.10010.com, m1.ad.10010.com, res.mall.10010.cn, app.yinxiang.com, img.meituan.net, baidu.com, *-release.wuta-cam.com, cdnmobibank.bankofbeijing.com.cn, mapi.mafengwo.cn, api.izuiyou.com, appconf.mail.163.com, api.dangdang.com, cmsapi.wifi8.com, news.l.qq.com, daoyu.sdo.com, gw.aihuishou.com, bp-api.bestv.com.cn, bp-image.bestv.com.cn, portal-portm.meituan.com, mall.meituan.com, wmapi.meituan.com, cdn-xyk-app.bankofbeijing.com.cn, thor.weidian.com, open3.vistastory.com, i.ys7.com, www.xiaohongshu.com, edith.xiaohongshu.com, ci.xiaohongshu.com, api.caijingmobile.com, j5.dfcfw.com, capi.douyucdn.cn, icc.one, www.cntv.com, api.coolapk.com, ios.xiangjiaoapps.com, img.wukongtv.com, service.4gtv.tv, static.api.m.panda.tv, api-mifit.huami.com, channel.beitaichufang.com, static.95508.com, wap.bank.ecitic.com, file.cibfintech.com, api*.futunn.com, mob.mddcloud.com, i.snssdk.com.*, sf6-be-pack.pglstatp-toutiao.com, images.client.vip.xunlei.com, api-shoulei-ssl.xunlei.com, elemecdn.com, exp.3g.ifeng.com, l*.51fanli.net, app.zhuanzhuan.com, magev6.if.qidian.com, magev6.if.qidian.com, *.bdstatic.com, dili.bdatu.com, rs.creditcard.cmbc.com.cn, iadmusicmat.music.com, ocean.shuqireader.com, api.fengshows.com, sh-gateway.shihuo.cn, api.touker.com, app.variflight.com, sofire.baidu.com, atrace.chelaile.net.cn, www.cmbc.com.cn, img01.10101111cdn.com, r.inews.qq.com, m.sd.10086.cn, p1-q.mafengwo.net, *.xima*.*, account.wps.*, afd.baidu.com, appwk.baidu.com, ios.lantouzi.com, mpcs.suning.com, m.tuniu.com, api.jxedt.com, dns.jd.com, api.m.jd.com, m.jd.com, *.k.sohu.com, www.nfmovies.com, static01.versa-ai.com, gfp.veta.naver.com, mpos-pic.helipay.com, api.yikaobang.com.cn, god.gameyw.netease.com, image.spdbccc.com.cn, fbchina.flipchina.cn, media.qyer.com, restapi.iyunmai.com, static.shihuocdn.cn, weixin110.qq.com, appapi.huazhu.com, lban.spdb.com.cn, wap.spdb.com, smart.789.image.mucang.cn, btrace.qq.com, img.dailmo.com, app.95598pay.com, reading-hl.snssdk.com, music.snailsleep.net, adproxy.autohome.com, ma.ofo.com, pic.u51.com, dl*.app.gtja.com, activity2.api.ofo.com, luckman.suning.com, app.xinpianchang.com, static.gameplus.qq.com, portal-xunyou.qingcdn.com, pi.edaijia.cn, api.myb6api.com:8080, notch.qdaily.com, apivip.zybang.com, pan.baidu.com, *.tieba.baidu.com, tiebac.baidu.com, s3gw.cmbimg.com, snailsleep.net, *.xmcdn.*, api.meiyan.com, api.laifeng.com, fuss10.elemecdn.com, smkmp.96225.com, static.creditcard.hxb.com.cn, sf3-be-pack.pglstatp-toutiao.com, ossgw.alicdn.com, *.mgtv.com, api.picsart.c*, oral.youdao.com, p.kuaidi100.com, mlife.jf365.boc.cn, heic.alicdn.com, asp.cntv.myalicdn.com, www.tsytv.com, app2.autoimg.cn, www.iyingdi.cn, m.baidu.com, webboot.zhangyue.com, api4.bybutter.com, security.wechat.com, api.xiachufang.com, 4gimg.map.qq.com, community.snailsleep.net, p.du.163.com, support.you.163.com, apiwz.midukanshu.com, ifengad.3g.ifeng.com, tc.qq.com, img.admobile.top, ads-shopping.shouqianba.com, api.pinduoduo.com, img.mcd.cn, cheyouapi.ycapp.yiche.com, api.kkmh.com, ad.ysepay.com, ports3.gtimg.com, i0.hdslb.com, m.yap.yahoo.com, webcdn.m.qq.com, rtbapi.douyucdn.cn, dapis.mting.info, qidian.qpic.cn, games.mobileapi.hupu.com, emdcadvertise.eastmoney.com, mime.baidu.com, api.club.lenovo.cn, img.allahall.com, staticsns.cdn.bcebos.com, api.wfdata.club, dsa-mfp.fengshows.cn, wmapi.meituan.net, apimobile.meituan.net, flowplus.meituan.net, v?-api.miaopai.com, ssp.dzh.com.cn, adm.10jqka.com.cn, stat.10jqka.com.cn, api.xueqiu.com, xqimg.imedao.com, ios.fuliapps.com, pt-starimg.didistatic.com, omgup*.xiaojukeji.com, *.pipiapps.com, adstatic.peopleapp.com, otheve.beacon.qq.com, i9.taou.com, ptf.flyertrip.com, api.qbb6.com, res.xiaojukeji.com, conf.diditaxi.com.cn, yunbusiness.ccb.com, img.alicdn.com, www.babybooks.top, lginstaacademy.com, capis.didapinche.com, ms.jr.jd.com, m.creditcard.ecitic.com, img.gdoil.cn, api.hanju.koudaibaobao.com, api.jr.mi.com, imagev2.tx.xmcdn.com, upload-bbs.mihoyo.com, gw-passenger.01zhuanche.com, ndstatic.cdn.bcebos.com, fc-video.cdn.bcebos.com, rp.hpplay.cn, dyncdn.me, pss.txffp.com, capis*.didapinche.com, dxy.com, staticlive.douyucdn.cn, edit.sinaapp.com, www1.elecfans.com, *.googlevideo.com, pocketuni.net, j-image.missfresh.cn, cms.daydaycook.com, api.cloud.189.cn, m.ads.8le8le.com, mobile.cebbank.com, yghsh.cebbank.com, y.gtimg.cn, dss0.bdstatic.com, tb1.bdstatic.com, tb2.bdstatic.com, ss0.bdstatic.com, gss0.bdstatic.com, newclient.map.baidu.com, ossweb-img.qq.com, mea.meitudata.com, list-app-m.i4.cn, api.daydaycook.com, learn.chaoxing.com, 59.111.*, 112.13.119.52, 117.147.199.59, interface*.music.163.com, httpdns.n.netease.com, *.163jiasu.com, ipv4.music.163.com, mrobot.pconline.com.cn, res.kfc.com.cn, gw.kaola.com, api.huomao.com, note.youdao.com, mi.gdt.qq.com, fmapp.chinafamilymart.com.cn, app-gw.csdn.net, gw.csdn.net, iis1.deliver.ifeng.com, app.58.com, cap.caocaokeji.cn, account.wps.cn, youtube.com, live-ads.huya.com, cdn.wup.huya.com, cdnfile1.msstatic.com, business.msstatic.com, mobileapi-v6.elong.com, ct.xiaojukeji.com, homepage-api.smzdm.com, haojia-api.smzdm.com, app-api.smzdm.com, user-api.smzdm.com, article-api.smzdm.com, qianbao.smzdm.com, baike-api.smzdm.com, haojia.m.smzdm.com, zhiyou.m.smzdm.com, s-api.smzdm.com, api.smzdm.com, adpai.thepaper.cn, www.baidu.com, *.tv.sohu.com, ih2.ireader.com, img-ys011.didistatic.com, common.diditaxi.com.cn, display.wting.info, kano.guahao.cn, i-lq.snssdk.com, syh.zybang.com, cloud.189.cn, ad.12306.cn, avoscloud.com, dl-cu-hz.lechange.cn, spclient.wg.spotify.com, dsp-impr2.youdao.com, api.rr.tv, *.pglstatp-toutiao.com, mobile.yangkeduo.com, api.yangkeduo.com, xyz.cnki.net, api.bjxkhc.com, d.psbc.com, fm.fenqile.com, client.app.coc.10086.cn, ssl.kohsocialapp.qq.com, img.ddrk.me, ddrk.me, img.jiemian.com, message.shuqireader.com, ut2.shuqistat.com, dsp.toutiao.com, sq.sljkj.com, img-tailor.11222.cn, feedback.uc.cn, *.shuqireader.com, 101.91.69.26, gateway.shouqiev.com, api.gotokeep.com, kad.gotokeep.com, static1.keepcdn.com, mbank.grcbank.com, -i.vip.iqiyi.com, *.iqiyi.com, api-sams.walmartmobile.cn, *.townmalls.com, api.htp.ad-scope.com.cn, appgw.ddpai.com, init.sms.mob.com, www.flyert.com, hcz-member.pingan.com.cn, jp.rsscc.com, jt.rsscc.com, push.it.10086.cn, oss.jegotrip.com.cn, hwimg.beingfine.cn, learnywhere.cn, appapi.51job.com, cupid.51job.com, api-ac.liepin.com, api-wanda.liepin.com, manga.bilibili.com, i0.hdslb.com, intellicc.bcs.cmbchina.com


# >>>>>>>>>>>>>>> ✅ 0 ✅ <<<<<<<<<<<<<<

# >>>>>>>>>>>>>>> ✅ 1 ✅ <<<<<<<<<<<<<<
# > 12306
# hostname = ad.12306.cn, mobile.12306.cn
^https:\/\/ad\.12306\.cn\/ad\/ser\/getAdList$ url script-analyze-echo-response https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/12306.js
^https:\/\/mobile\.12306\.cn\/otsmobile\/app\/mgs\/mgw\.htm$ url script-response-header https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/header.js
# >>>>>>>>>>>>>>> ✅ 3 ✅ <<<<<<<<<<<<<<
# > 36kr
# hostname = gateway.36kr.com
^https?:\/\/gateway\.36kr\.com\/api\/adx\/ad\/show url reject

# >>>>>>>>>>>>>>> ✅ A ✅ <<<<<<<<<<<<<<
# > AcFun
# hostname = aes.acfun.cn, api-new.app.acfun.cn
^https?:\/\/aes\.acfun\.cn\/s\?adzones url reject
^https?:\/\/api-new\.app\.acfun\.cn\/rest\/app\/flash\/screen\/ url reject

# amdc
^http:\/\/amdc\.m\.taobao\.com\/amdc\/mobileDispatch$ url script-response-header https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/header.js
# 阿里巴巴 //acs.m.taobao.com, heic.alicdn.com, guide-acs.m.taobao.com, poplayer.template.alibaba.com
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.fliggy\.crm\.screen\.(allresource|predict) url reject-dict
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.alibaba\.advertisementservice\.getadv url reject-dict
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.alimama\.etao\.config\.query\/.+?etao_advertise url reject-dict
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.alimusic\.common\.mobileservice\.startinit url reject-dict
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.etao\.noah\.query\/.+tao_splash url reject-dict
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.film\.mtopadvertiseapi\.queryadvertise url reject-dict
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.o2o\.ad\.gateway\.get url reject-dict
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.taobao\.idle\.home\.welcome url reject-dict
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.trip\.activity\.querytmsresources url reject-dict
^https:\/\/heic\.alicdn\.com\/imgextra\/i\d\/\d*\/?[\w!]+-\d-(octopus|tps-1125-1602|tps-1080-1920)\.(jp|pn)g_(1\d{3}|9\d{2})x(1\d{3}|9\d{2})q[59]0 url reject-dict
^https:\/\/guide-acs\.m\.taobao\.com\/gw\/mtop\.cainiao\.adx\.flyad\.getad url reject-dict
^https:\/\/guide-acs\.m\.taobao\.com\/gw\/mtop\.cainiao\.guoguo\.nbnetflow\.ads\.mshow url script-response-body https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/cainiao.js
^https:\/\/guide-acs\.m\.taobao\.com\/gw\/mtop\.taobao\.(volvo\.secondfloor\.getconfig|wireless\.home\.newface\.awesome\.get) url reject-dict
^https:\/\/guide-acs\.m\.taobao\.com\/gw\/mtop\.taobao\.(cloudvideo\.video\.query|wireless\.home\.splash\.awesome\.get) url script-response-body https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/myBlockAds.js
^https:\/\/poplayer\.template\.alibaba\.com\/\w+\.json url script-response-body https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/myBlockAds.js

# >>>>>>>>>>>>>>> ✅ B ✅ <<<<<<<<<<<<<<
# > 必胜客
# hostname = res.pizzahut.com.cn
^https?:\/\/res\.pizzahut\.com\.cn\/CRM\/phad\/member\/app\/member url reject-200
^https?:\/\/res\.pizzahut\.com\.cn\/CRM\/phad\/apphome\/apphome url reject

# > 哔哩哔哩漫画
# hostname = manga.bilibili.com, i0.hdslb.com
^https?:\/\/manga\.bilibili\.com\/twirp\/comic\.v\d\.Comic\/(Recommend|Flash|ListFlash|GetBubbles|GetActivityTab|GetCommonBanner).* url reject
^https?:\/\/i0\.hdslb\.com\/bfs\/manga-static\/\w+.(png|jpg)$ url reject-dict


# >>>>>>>>>>>>>>> ✅ C ✅ <<<<<<<<<<<<<<
# > 菜鸟裹裹
# hostname = cn-acs.m.cainiao.com, amdc.m.taobao.com
# 其他
^http:\/\/amdc\.m\.taobao\.com\/amdc\/mobileDispatch$ url script-response-header https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/header.js
# 首页 好物推荐,商品推广,底部标签页,快递详情页,问卷调查,主页图标
^https:\/\/cn-acs\.m\.cainiao\.com\/gw\/mtop\.cainiao\.adkeyword\.get\.cn url reject-dict
^https:\/\/cn-acs\.m\.cainiao\.com\/gw\/mtop\.cainiao\.cncommunity\.my\.station\.query\.cn url reject-dict
^https:\/\/cn-acs\.m\.cainiao\.com\/gw\/mtop\.cainiao\.guoguo\.nbnetflow\.ads\.(batch\.show\.v2|index)\.cn url reject-dict
^https:\/\/cn-acs\.m\.cainiao\.com\/gw\/mtop\.cainiao\.guoguo\.nbnetflow\.ads\.m?show\.cn url script-response-body https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/cainiao.js
^https:\/\/cn-acs\.m\.cainiao\.com\/gw\/mtop\.cainiao\.nbopen\.miniapp\.recommend\.cpc\.cn url reject-dict
^https:\/\/cn-acs\.m\.cainiao\.com\/gw\/mtop\.cainiao\.nbmensa\.research\.researchservice\.(acquire|event|close)\.cn url reject-dict
^https:\/\/cn-acs\.m\.cainiao\.com\/gw\/mtop\.cainiao\.nbpresentation\.(homepage\.merge|tabbar\.marketing)\.get\.cn url reject-dict
^https:\/\/cn-acs\.m\.cainiao\.com\/gw\/mtop\.cainiao\.nbpresentation\.(pickup\.empty\.page|protocol\.homepage)\.get\.cn url script-response-body https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/cainiao.js
# 消息中心
^https:\/\/cn-acs\.m\.cainiao\.com\/gw\/mtop\.nbfriend\.message\.conversation\.list\.cn url script-response-body https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/cainiao.js
# 发现页 数字角标 裹裹券
^https:\/\/cn-acs\.m\.cainiao\.com\/gw\/mtop\.com\.cainiao\.cnactivitycenter url reject-dict
^https:\/\/cn-acs\.m\.cainiao\.com\/gw\/mtop\.com\.cainiao\.cncreditmarket\.hit\.getactivityhit\.cn url reject-dict
^https:\/\/cn-acs\.m\.cainiao\.com\/gw\/mtop\.com\.cainiao\.longquan\.place\.getpageresourcecontent\.cn url reject-dict

# >>>>>>>>>>>>>>> ✅ D ✅ <<<<<<<<<<<<<<
# > 大麦
# hostname = acs.m.taobao.com
^https?:\/\/acs\.m\.taobao\.com\/gw\/mtop\.damai\.wireless\.home\.welcome url reject-200

# > 大众点评
# hostname = img.meituan.net
# 开屏广告
^https?:\/\/img\.meituan\.net\/dpmobile\/.+93241\.png url reject-dict
^https?:\/\/img\.meituan\.net\/dpmobile\/.*.(gif|jpg) url reject-200

# > 动卡空间
# hostname = ump.sz.creditcard.ecitic.com
# 开屏广告
^https:\/\/ump\.sz\.creditcard\.ecitic\.com\/citiccard\/cm-ump\/ump-gateway\/ump-net-app\/ump-net-app\/adv url reject-dict
^https?:\/\/m\.creditcard\.ecitic\.com\/citiccard\/mbk\/appspace-getway\/getWay\/dkkj-system-web\/system\/v\d\/init-config url reject-200

# > 豆瓣
# hostname = api.douban.com
# 如开启可自行添加主机名 img*.douban.com, frodo.douban.com, erebor.douban.com
^https?:\/\/api\.douban\.com\/v\d\/app_ads\/ url reject-dict
^https?:\/\/api\.douban\.com\/b.*\/common_ads\?.* url reject-dict
^https?:\/\/img\d\.doubanio\.com\/view\/dale-online\/dale_ad\/ url reject
^https?:\/\/frodo\.douban\.com\/api\/v2\/movie\/banner url reject
^https?:\/\/erebor\.douban\.com\/count\/\?ad= url reject

# > 斗鱼直播
# hostname = daoyu.sdo.com, rtbapi.douyucdn.cn, staticlive.douyucdn.cn, capi.douyucdn.cn, douyucdn.cn
^https?:\/\/daoyu\.sdo\.com\/api\/userCommon\/getAppStartAd url reject
^https?:\/\/rtbapi\.douyucdn\.cn\/japi\/sign\/app\/getinfo url reject-200
^https?:\/\/staticlive\.douyucdn\.cn\/upload\/signs\/ url reject
^https?:\/\/staticlive\.douyucdn\.cn\/.+\/getStartSend url reject
^https?:\/\/staticlive\.douyucdn\.cn\/.+?\/getStartSend url reject-img
^https?:\/\/capi\.douyucdn\.cn\/lapi\/sign\/app(api)?\/getinfo\?client_sys=ios url reject
^https?:\/\/capi\.douyucdn\.cn\/api\/ios_app\/check_update url reject-img
^https?:\/\/capi\.douyucdn\.cn\/api\/v1\/getStartSend?client_sys=ios url reject-img
^https?:\/\/douyucdn\.cn\/.+\/appapi\/getinfo url reject
^https?:\/\/douyucdn\.cn\/.+?\/appapi\/getinfo url reject-img

# > 丁香医生
# hostname = dxy.com
^https?:\/\/dxy\.com\/app\/i\/ask\/biz\/feed\/launch url reject

# > 丁香园
# hostname = dq.dxy.cn
^https?:\/\/dq\.dxy\.cn\/api\.php\?action=getpostbanners url reject

# >>>>>>>>>>>>>>> ✅ E ✅ <<<<<<<<<<<<<<
# > 饿了么
# hostname = elemecdn.com, fuss10.elemecdn.com, cube.elemecdn.com, www1.elecfans.com, nr-op.elemecdn.com
# 开屏广告
^https?:\/\/elemecdn\.com\/.+\/sitemap url reject
^https?:\/\/fuss10\.elemecdn\.com\/.+\/w\/640\/h\/\d{3,4} url reject
^https?:\/\/fuss10\.elemecdn\.com\/.+\/w\/750\/h\/\d{3,4} url reject
^https?:\/\/fuss10\.elemecdn\.com\/.+?\.mp4 url reject-img
^https?:\/\/cube\.elemecdn\.com\/[\w\/]+\.jpeg\?x-oss-process=image\/resize,m_fill,w_1\d{3},h_2\d{3}\/format,webp\/ url reject
^https?:\/\/cube\.elemecdn\.com\/[\w\/]+\.jpeg\?x-oss-process=image\/resize,m_fill,w_6\d{2},h_8\d{2}\/format,webp\/ url reject
^https?:\/\/cube\.elemecdn\.com\/[\w\/]+\.jpeg\?x-oss-process=image\/resize,m_fill,w_\d{3},h_\d{4}\/format,webp\/ url reject
^https?:\/\/cube\.elemecdn\.com\/\w\/\w{2}\/\w+mp4\.mp4\? url reject
^https?:\/\/www1\.elecfans\.com\/www\/delivery\/ url reject
^https:\/\/(nr-op|cube)\.elemecdn\.com\/.+\.jpeg\?x-oss-process=image\/resize,m_fill,w_\d{4,},h_\d{4,}\/($|format,webp\/$) url reject

# >>>>>>>>>>>>>>> ✅ F ✅ <<<<<<<<<<<<<<
# > Flightradar24
# hostname = mobile.flightradar24.com
# 解锁
^https:\/\/mobile\.flightradar24\.com\/mobile\/(user-session|subscribe) url script-response-body https://raw.githubusercontent.com/fmz200/wool_scripts/main/QuantumultX/scripts/Flightradar24.js

# > 飞猪 + 阿里巴巴
# hostname = amdc.m.taobao.com, acs.m.taobao.com, gw.alicdn.com
^http?:\/\/amdc\.m\.taobao\.com\/amdc\/mobileDispatch %E9%A3%9E%E7%8C%AA%E6%97%85%E8%A1%8C url-and-header reject-dict
^https?:\/\/acs\.m\.taobao\.com\/gw\/mtop\.fliggy\.crm\.screen\.(allresource|predict) url reject-dict
^https?:\/\/acs\.m\.taobao\.com\/gw\/mtop\.trip\.activity\.querytmsresources\/1\.0\?type=originaljson url reject-img
^https?:\/\/gw\.alicdn\.com\/mt\/ url reject
^https?:\/\/gw\.alicdn\.com\/imgextra\/\w{2}\/[\w!]+-\d-tps-\d{3}-\d{4}\.(jpg|png)$ url reject

# > 发现精彩
# hostname = static.95508.com
# 开屏广告
^https?:\/\/static\.95508\.com\/mmg\/images\/ads\/.+\/(.+1125?.+2436|.+%.+%|.+_.+_) url reject-dict
^https?:\/\/static\.95508\.com\/mmg\/ciop\/sysabbr\/cmep\/images\/apppopupads url reject-dict

# >>>>>>>>>>>>>>> ✅ G ✅ <<<<<<<<<<<<<<
# > 广发银行
# hostname = static.95508.com, mps.95508.com
^https?:\/\/static\.95508\.com\/icppweb\/images\/modelMaterial\/accurate\/202\d{5}\/.*.(png|jpg) url reject-200
^https?:\/\/static\.95508\.com\/icppweb\/images\/modelMaterial\/advertising\/202\d{5}\/.*.(png|jpg) url reject-200
^https?:\/\/mps\.95508\.com\/mps\/club\/cardPortals\/adv\/\d{25}\.(png|jpg) url reject-img

# > 谷歌
# hostname = *.googleapis.com, pagead2.googlesyndication.com
# 如开启可自行添加主机名，但似乎已不可MITM
^https?:\/\/.+\.googleapis.com/.+ad_break url reject-img
^https?:\/\/.+\.googleapis.com/.+log_event url reject-img
^https?:\/\/.+\.googleapis.com/adsmeasurement url reject-img
^https?:\/\/pagead2\.googlesyndication\.com\/pagead\/ url reject-img

# > 挂号网（微医）
# hostname = kano.guahao.cn, app.wy.guahao.com
^https?:\/\/kano\.guahao\.cn\/[a-zA-Z0-9]{12} url reject-200
^https?:\/\/kano\.guahao\.cn\/.+?\?resize=\d{3}-\d{4} url reject-img
^https?:\/\/app\.wy\.guahao\.com\/json\/white\/dayquestion\/getpopad url reject

# > 故宫博物馆小程序
# hostname = gugongmini.dpm.org.cn
# 开屏广告
^https:\/\/gugongmini\.dpm\.org\.cn\/gugong_applet\/open-screen url reject-dict

# >>>>>>>>>>>>>>> ✅ H ✅ <<<<<<<<<<<<<<
# > 华尔街见闻
# hostname = api-one-wscn.awtmt.com, api.wallstreetcn.com
# 开屏广告 感谢【Joe Joy】分享
^https:\/\/api-one-wscn\.awtmt\.com\/apiv1\/advertising\/ads\/13424\/materials url reject-dict
^https?:\/\/api\.wallstreetcn\.com\/apiv\d\/advertising\/ url reject

# > 虎牙直播
# hostname = cdn.wup.huya.com, business.msstatic.com, cdnfile1.msstatic.com, live-ads.huya.com
^http:\/\/cdn\.wup\.huya\.com\/launch\/queryHttpDns$ url reject
^https?:\/\/business\.msstatic\.com\/advertiser\/material url reject
^https?:\/\/cdnfile1\.msstatic\.com\/cdnfile\/appad\/ url reject-img
^https?://live-ads\.huya\.com/live/getAllEntrance.*$ url reject-dict

# > 华住
# hostname = appapi.huazhu.com
^https?:\/\/appapi\.huazhu\.com:\d{4}\/client\/app\/getAppStartPage\/ url reject

# > 虎扑
# hostname = games.mobileapi.hupu.com, du.hupucdn.com, i*.hoopchina.com.cn, goblin.hupu.com
^https?:\/\/games\.mobileapi\.hupu\.com\/.+?\/(interfaceAdMonitor|interfaceAd)\/ url reject
^https?:\/\/games\.mobileapi\.hupu\.com\/.+?\/(search|interfaceAdMonitor|status|hupuBbsPm)/(hotkey|init|hupuBbsPm)\. url reject-img
^https?:\/\/games\.mobileapi\.hupu\.com\/.+?\/status\/init url reject
^https?:\/\/games\.mobileapi\.hupu\.com\/\d\/(?:\d\.){2}\d\/status\/init url reject
^https?:\/\/du\.hupucdn\.com\/\w+h\d{4} url reject-img
^https?:\/\/i\d\.hoopchina\.com\.cn/blogfile\//d+\//d+\/BbsImg\.(?<=(big.(png|jpg)))$ url reject-img
^https?:\/\/goblin\.hupu\.com\/.+\/interfaceAd\/getOther url reject
^https?:\/\/i1\.hoopchina\.com\.cn\/blogfile\/.+_\d{3}x\d{4} url reject-img

# > 虎嗅
# hostname = api-ad-product.huxiu.com
^https:\/\/api-ad-product\.huxiu\.com\/Api\/Product\/SDK\/Advert\/Query\/queryAdvertListInfo url reject

# > 黄油相机
# hostname = api4.bybutter.com
^https?:\/\/api4\.bybutter\.com\/v\d\/app\/placements\/\d\/advertisements url reject

# > 航旅纵横
# > hostname = home.umetrip.com, discardrp.umetrip.com, startup.umetrip.com,
^http?:\/\/(discardrp|startup)\.umetrip\.com\/gateway\/api\/umetrip\/native url reject
^http?:\/\/(114\.115\.217\.129)|(home\.umetrip\.com)\/gateway\/api\/umetrip\/native$ url script-response-body https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Resource/Script/Umetrip/Umetrip_remove_ads.js

# >>>>>>>>>>>>>>> ✅ I ✅ <<<<<<<<<<<<<<
# > IT之家
# hostname = napi.ithome.com
# 移除 轮播图 置顶文章 信息流广告
^https:\/\/napi\.ithome\.com\/api\/(news\/index|topmenu\/getfeeds) url script-response-body https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/ithome.js

# >>>>>>>>>>>>>>> ✅ J ✅ <<<<<<<<<<<<<<
# 建设银行
# hostname = image1.ccb.com
^http:\/\/image1\.ccb\.com\/newsinfo\/eBranch\/check\/(nf\/newfin\/activity|po\/poortheme\/activity)\/\w+\.png url reject

# > 界面新闻
# hostname = img.jiemian.com
^https?:\/\/img\.jiemian\.com\/ads\/ url reject

# >>>>>>>>>>>>>>> ✅ K ✅ <<<<<<<<<<<<<<
# > 快手联盟,优量汇,穿山甲
# hostname = api-access.pangolin-sdk-toutiao.com, is.snssdk.com, mi.gdt.qq.com
^https:\/\/api-access\.pangolin-sdk-toutiao\.com\/api\/ad\/union\/sdk\/get_ads url script-response-body https://raw.githubusercontent.com/app2smile/rules/master/js/adsense.js
^https:\/\/is.snssdk.com/api/ad/union/sdk url script-response-body https://raw.githubusercontent.com/app2smile/rules/master/js/adsense.js
^https:\/\/mi\.gdt\.qq\.com\/gdt_mview url script-response-body https://raw.githubusercontent.com/app2smile/rules/master/js/adsense.js

# > 肯德基
# hostname = res.kfc.com.cn, abplatform.yumchina.com
^https?:\/\/res\.kfc\.com\.cn\/CRM\/kfcad\/apphome6\/apphome url script-response-body https://raw.githubusercontent.com/linuszlx/JS/main/KFC/KFC.js
^https?:\/\/res\.kfc\.com.\cn\/advertisement\/ url reject
^https?:\/\/abplatform\.yumchina\.com\/abtestplatform\/api\/abtest\/kfc\/adRouter url reject-200

# >>>>>>>>>>>>>>> ✅ L ✅ <<<<<<<<<<<<<<
# >>>>>>>>>>>>>>> ✅ M ✅ <<<<<<<<<<<<<<
# > 美团
# hostname = img.meituan.net, p*.meituan.net, s3plus.meituan.net, www.meituan.net, flowplus.meituan.net, wmapi.meituan.net, apimobile.meituan.net, apimobile.meituan.com
^https?:\/\/img\.meituan\.net\/(?>adunion|display|midas)\/.+?\.(gif|jpg|jpg\.webp)$ url reject-200
^https?:\/\/p\d\.meituan\.net\/wmbanner\/[A-Za-z0-9]+?\.jpg url reject-200
^https?:\/\/p\d\.meituan\.net\/movie\/[A-Za-z0-9]+?\.jpg\?may_covertWebp url reject-200
^https?:\/\/s3plus\.meituan\.net\/.+?\/linglong\/ url reject
^https?:\/\/s3plus\.meituan\.net\/v1\/mss_a002 url reject-img
^https?:\/\/www\.meituan\.com\/api\/v\d\/appstatus\? url reject
^https?:\/\/wmapi\.meituan\.com\/api\/v\d+\/loadInfo\? url reject
^https?:\/\/wmapi\.meituan\.com\/api\/v\d\/startpicture url reject
^https?:\/\/flowplus\.meituan\.net\/v\d\/\w+\/linglong\/\d+\.(gif|jpg|mp4) url reject
^https?:\/\/(s3plus|flowplus)\.meituan\.net\/v\d\/\w+\/linglong\/\w+\.(gif|jpg|mp4) url reject
^https?:\/\/apimobile\.meituan\.com\/appupdate\/mach\/checkUpdate? url reject
^https?:\/\/img\.meituan\.net\/(adunion|display|midas)\/\w+\.(gif|jpg|jpg\.webp)$ url reject
^https?:\/\/p\d.meituan.net\/movie\/.*?\?may_covertWebp url reject-img
^https?:\/\/p\d{1}\.meituan\.net\/(adunion|display|mmc|wmbanner)\/ url reject
# 美团订单详情页更多推荐
^https:\/\/apimobile\.meituan\.com\/group\/v1\/recommend\/unity\/recommends url reject

# > 美团外卖
# hostname = wmapi.meituan.com, img.meituan.net, s3plus.meituan.net
^http:\/\/wmapi\.meituan\.com\/api\/v7\/(loadInfo|openscreen|startpicture)\? url reject-dict
^https?:\/\/img\.meituan\.net\/bizad\/.*.jpg url reject-200
^https?:\/\/img\.meituan\.net\/(bizad|brandCpt)\/\w+\.(png|jpg) url reject
^http:\/\/s3plus\.meituan\.net\/.*\/brandcpt-vedio\/.*\?time url reject

# > 美团众包
# hostname = peisongapi.meituan.com
^https?:\/\/peisongapi\.meituan\.com\/client\/getInitiateImage url reject-200
# > 芒果TV
# hostname = *.mgtv.com
# 无用请求
^http:\/\/[\d\.]+:\d{5}\/\?cmd=indexes url reject
# 首页左上角推广
^http:\/\/[\d\.]+\/odin\/c1\/(channel\/ads|skin\/config)\? url reject-dict
# 底部tab红点
^https:\/\/damang\.api\.mgtv\.com\/station\/album\/red\/dot\? url reject-dict
# 播放器界面
^https:\/\/hb-boom\.api\.mgtv\.com\/release\/pullReleaseInfo url reject-dict
# 我的页面
^https:\/\/me\.bz\.mgtv\.com\/v3\/module\/list\? url script-response-body https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/cnftp.js
# 首页信息流,顶部tab
^http:\/\/mob-st\.bz\.mgtv\.com\/odin\/c1\/channel\/index\? url script-response-body https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/cnftp.js
^https?:\/\/dc2?\.bz\.mgtv\.com\/dynamic\/v1\/channel\/(index|vrsList)\/\w url script-response-body https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/cnftp.js
# 底部tab
^https:\/\/mobile\.api\.mgtv\.com\/mobile\/config\? url script-response-body https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/cnftp.js
# 升级弹窗
^https:\/\/mobile\.api\.mgtv\.com\/v2\/mobile\/checkUpdate\? url reject-dict
# 播放详情页
^https:\/\/mobile\.api\.mgtv\.com\/v10\/video\/info\? url script-response-body https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/cnftp.js
^https:\/\/mobile-thor\.api\.mgtv\.com\/v1\/vod\/info\? url script-response-body https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/cnftp.js
# 搜索框填充词
^http:\/\/mobileso\.bz\.mgtv\.com\/spotlight\/search\/v1\? url reject-dict
^https?:\/\/mobileso\.bz\.mgtv\.com\/mobile\/recommend\/v2\? url script-response-body https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/cnftp.js

# > 马蜂窝
# hostname = mapi.mafengwo.cn
^https:\/\/mapi\.mafengwo\.cn\/ad\/get_launch_ad_list\/(v|v2) url reject-200

# > 美味不用等
# hostname = capi.mwee.cn
^https?:\/\/capi\.mwee\.cn\/app-api\/V\d{2}\/app\/(ad|getstartad) url reject

# > 麦当劳
# hostname = api.mcd.cn
^https?:\/\/api\.mcd\.cn\/bff\/portal\/home\/splash url reject-200



# >>>>>>>>>>>>>>> ✅ N ✅ <<<<<<<<<<<<<<
# > 农业银行
# hostname = midc.cdn-static.abchina.com.cn, enjoy.cdn-static.abchina.com
# 开屏广告
^https?:\/\/midc\.cdn-static\.abchina\.com\.cn\/distributecenterimg\/file\/download\/(bdfb4|86fb9|7aa68|62b87|7c7d7) url reject-dict
^https?:\/\/enjoy\.cdn-static\.abchina\.com\/yx-engine-web\/file\/download\/(9ce31|1bf6e|6bd18) url reject-200

# >>>>>>>>>>>>>>> ✅ O ✅ <<<<<<<<<<<<<<
# > ONE
# hostname = v3.wufazhuce.com, app.api.d3yuiw4.com, api.21ec74.com
# 开屏广告
^http:\/\/v3\.wufazhuce\.com:8000\/api\/adpreloadlist url reject-dict
^http:\/\/app\.api\.d3yuiw4\.com\/api\/app\/ad url reject
^https?:\/\/api\.21ec74\.com\/v2\.5\/ad url reject

# >>>>>>>>>>>>>>> ✅ P ✅ <<<<<<<<<<<<<<
# > pikpak
# hostname = access.mypikpak.com
https://access.mypikpak.com/access_controller/v1/area_accessible url reject

# > 浦大喜奔
# hostname = image.spdbccc.com.cn
^https?:\/\/image\.spdbccc\.com\.cn\/group\d\/M00\/[A-Z0-9]{2}\/[A-Z0-9]{2}\/.+(4038|0571|M511|V-008|g549|b0628|fg817|5w501|Jo341|Z4583|oo845|i4905|MY245|YU472|Y401) url reject-dict

# > 拼多多
# hostname = api.pinduoduo.com, api.yangkeduo.com, mobile.yangkeduo.com
^https?:\/\/api\.(pinduoduo|yangkeduo)\.com\/api\/cappuccino\/splash url reject
# 多多买菜
# 开屏广告
^https:\/\/mobile\.yangkeduo\.com\/proxy\/api\/api\/express\/post\/waybill\/red_packet\/goods_list$ url response-body "list":\[.+\] response-body "list":[]

# > 澎湃新闻
# hostname = adpai.thepaper.cn
^https?:\/\/adpai\.thepaper\.cn\/.+&ad= url reject

# >>>>>>>>>>>>>>> ✅ Q ✅ <<<<<<<<<<<<<<
# > 汽车之家
# hostname = adproxy.autohome.com.cn, app2.autoimg.cn
^https?:\/\/adproxy\.autohome\.com\.cn\/AdvertiseService\/ url reject-img
^https?:\/\/app2\.autoimg\.cn\/apppdfs\/ url reject-img

# > 穷游
# hostname = open.qyer.com, media.qyer.com
^https?:\/\/open\.qyer\.com\/qyer\/startpage\/ url reject-200
^https?:\/\/open\.qyer\.com\/qyer\/config\/get url reject
^https?:\/\/media\.qyer\.com\/ad\/ url reject

# >>>>>>>>>>>>>>> ✅ R ✅ <<<<<<<<<<<<<<
# Reddit
# hostname = gql.reddit.com, gql-fed.reddit.com
# 过滤推广 关NSFW提示 感谢【xream】分享
^https?:\/\/gql(-fed)?\.reddit\.com url script-response-body https://raw.githubusercontent.com/fmz200/wool_scripts/main/Scripts/reddit.js

# > 瑞幸咖啡
# hostname = capi.lkcoffee.com, ecapi.lkcoffee.com, m.lkcoffee.com, img*.lkcoffee.com
# 倒计时可能还在
^https:\/\/capi\.lkcoffee\.com\/resource\/m\/sys\/app\/adposNew url reject
^https:\/\/(ec|c)api\.lkcoffee\.com\/resource\/m\/eorder\/product\/popAppTagProductList url reject
^https:\/\/m\.lkcoffee\.com\/ecapi\/resource\/m\/member\/exchange\/page url response-body \{.+\} response-body {"status":"SUCCESS"}
^https:\/\/m\.lkcoffee\.com\/capi\/resource\/m\/growUp\/main url response-body "popTitle":".+?" response-body "popTitle":""
^https?:\/\/img0[1-9]{1}\.luckincoffeecdn\.com\/group\d/M00/[A-Z0-9]{2}/[A-Z0-9]{2}/[a-zA-Z0-9]{29}\.(jpg|jpeg)_\.webp url reject-200



# >>>>>>>>>>>>>>> ✅ S ✅ <<<<<<<<<<<<<<
# > spotify
# hostname = spclient.wg.spotify.com, api*.musical.ly
^https?:\/\/spclient\.wg\.spotify\.com\/(ad-logic|ads|.+ad_slot|.+banners|.+canvases|.+cards|.+crashlytics|.+doubleclick.net|.+enabled-tracks|.+event|.+sponsored|.+promoted|.+promoted_offer) url reject-img
^https?:\/\/api\d?\.musical\.ly\/api\/ad\/ url reject-img

# > 顺丰快递
# hostname = ccsp-egmas.sf-express.com, ucmp.sf-express.com
# APP净化 感谢【怎么肥事】分享
^https:\/\/ucmp\.sf-express\.com\/proxy\/esgcempcore\/memberGoods\/pointMallService\/goodsList url reject-dict
^https:\/\/ccsp-egmas\.sf-express\.com\/cx-app-video\/video\/app\/video\/labelClusterList url reject-dict
^https:\/\/ccsp-egmas\.sf-express\.com\/cx-app-base\/base\/app\/ad\/queryInfoFlow url reject-dict
^https:\/\/ccsp-egmas\.sf-express\.com\/cx-app-base\/base\/app\/bms\/queryRecommend url reject-dict

# > 顺丰快递小程序
# hostname = mcs-mimp-web.sf-express.com, ucmp.sf-express.com
^https:\/\/mcs-mimp-web\.sf-express\.com\/mcs-mimp\/integralPlanet\/getCxAdvertiseList url reject-dict
^https:\/\/ucmp-static\.sf-express\.com\/proxy\/wxbase\/wxTicket\/wxLiveStreamInfo\?pageNo url reject-dict
^https:\/\/ucmp\.sf-express\.com\/proxy\/esgcempcore\/memberGoods\/pointMallService\/goodsList url reject-dict
^https:\/\/ucmp\.sf-express\.com\/proxy\/operation-platform\/info-flow-adver\/query url reject-dict
^https:\/\/ucmp\.sf-express\.com\/proxy\/esgcempcore\/memberManage\/memberEquity\/queryRecommendEquity url reject-dict
^https:\/\/ucmp\.sf-express\.com\/proxy\/esgcempcore\/memberActLengthy\/fullGiveActivityService\/fullGiveInfo url reject-dict

# > 顺丰优选
# hostname = mapi.sfbest.com
^https:\/\/mapi\.sfbest\.com\/brokerservice-server\/cms\/getPositionById.* url reject

# > 少数派
# hostname = ios.sspai.com
https://ios.sspai.com/api/v3/recommend/page/get\?ad.*ios_home_modal url reject

# >>>>>>>>>>>>>>> ✅ T ✅ <<<<<<<<<<<<<<
# > TestFlight
# hostname = testflight.apple.com
# TF账户管理 App更新时提示"APP不可用"问题，解决部分TF兑换错了区域的问题，例如Loon兑换到了国区
^https:\/\/testflight\.apple\.com\/v\d\/(app|account|invite)s\/ url script-analyze-echo-response https://raw.githubusercontent.com/NobyDa/Script/master/TestFlight/TestFlightAccount.js

# > 淘票票
# hostname = acs.m.taobao.com
# 开屏广告
^https?:\/\/acs\.m\.taobao\.com\/gw\/mtop\.film\.mtopadvertiseapi\.(queryadvertise|queryloadingbanner)\/ url reject

# > 淘宝
# hostname = acs.m.taobao.com, guide-acs.m.taobao.com, poplayer.template.alibaba.com
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.alibaba\.advertisementservice\.getadv url reject-dict
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.alimama\.etao\.config\.query\/.+?etao_advertise url reject-dict
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.alimusic\.common\.mobileservice\.startinit url reject-dict
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.etao\.noah\.query\/.+tao_splash url reject-dict
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.film\.mtopadvertiseapi\.queryadvertise url reject-dict
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.o2o\.ad\.gateway\.get url reject-dict
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.taobao\.idle\.home\.welcome url reject-dict
^https:\/\/acs\.m\.taobao\.com\/gw\/mtop\.trip\.activity\.querytmsresources url reject-dict
^https:\/\/guide-acs\.m\.taobao\.com\/gw\/mtop\.taobao\.(volvo\.secondfloor\.getconfig|wireless\.home\.newface\.awesome\.get) url reject-dict
^https:\/\/guide-acs\.m\.taobao\.com\/gw\/mtop\.taobao\.(cloudvideo\.video\.query|wireless\.home\.splash\.awesome\.get) url script-response-body https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/myBlockAds.js
^https:\/\/poplayer\.template\.alibaba\.com\/\w+\.json url script-response-body https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/myBlockAds.js

# >>>>>>>>>>>>>>> ✅ U ✅ <<<<<<<<<<<<<<
# >>>>>>>>>>>>>>> ✅ V ✅ <<<<<<<<<<<<<<
# >>>>>>>>>>>>>>> ✅ W ✅ <<<<<<<<<<<<<<
# > 微信
# hostname = mp.weixin.qq.com, weixin110.qq.com, security.wechat.com
# 公众号文章下方广告
^https?:\/\/mp\.weixin\.qq\.com\/mp\/getappmsgad url response-body advertisement response-body random_body
# 微信跳过中间界面，支付宝链接、被封禁链接进行通知弹窗跳转，在微信中用快照显示被封禁的链接（可选），在微信中进行强制重定向（可选），群聊 / 扫码均可使用，可选项可在脚本 2、3 行更改，也可在 BoxJs 中更改。
^https\:\/\/(weixin110\.qq|security.wechat)\.com\/cgi-bin\/mmspamsupport-bin\/newredirectconfirmcgi\? url script-response-body https://raw.githubusercontent.com/zZPiglet/Task/master/asset/UnblockURLinWeChat.js
# 微信公众号去除商品推广
^https?:\/\/mp\.weixin\.qq\.com\/mp\/cps_product_info\?action url reject-dict

# > 网易蜗牛读书
# hostname = easyreadfs.nosdn.127.net, p.du.163.com
^https?:\/\/easyreadfs\.nosdn\.127\.net\/ad-material\/ url reject-200
^https?:\/\/p\.du\.163\.com\/ad\/ url reject-200

# >>>>>>>>>>>>>>> ✅ X ✅ <<<<<<<<<<<<<<
# > 小米
# hostname = api.m.mi.com, api.jr.mi.com, api-mifit.huami.com
^https?:\/\/api\.m\.mi\.com\/v\d\/app\/start url reject-200
^https?:\/\/api\.jr\.mi\.com\/v\d\/adv\/ url reject-200
^https?:\/\/api\.jr\.mi\.com\/jr\/api\/playScreen url reject-200
^https?:\/\/api-mifit.+?\.huami\.com\/discovery\/mi\/discovery\/.+?_ad\? url reject-200
^https?:\/\/home\.mi\.com\/cgi-op\/api\/v\d\/recommendation\/banner url reject
^https?:\/\/(api-mifit|api-mifit-\w+)\.huami\.com\/discovery\/mi\/discovery\/\w+_ad\? url reject
^https?:\/\/api-mifit\.huami\.com\/discovery\/mi\/discovery\/homepage_ad\? url reject-img
^https?:\/\/api-mifit\.huami\.com\/discovery\/mi\/discovery\/sleep_ad\? url reject-img
^https?:\/\/api-mifit\.huami\.com\/discovery\/mi\/discovery\/sport_summary_ad\? url reject-img
^https?:\/\/api-mifit\.huami\.com\/discovery\/mi\/discovery\/sport_training_ad\? url reject-img
^https?:\/\/api-mifit\.huami\.com\/discovery\/mi\/discovery\/step_detail_ad\? url reject-img
^https?:\/\/api-mifit\.huami\.com\/discovery\/mi\/discovery\/training_video_ad\? url reject-img

# > 米家
# hostname = home.mi.com
^https:\/\/home\.mi\.com\/cgi-op\/api\/v1\/recommendation\/(banner|myTab)\? url reject-dict

# > 闲鱼
# hostname = gw.alicdn.com, heic.alicdn.com, asp.cntv.myalicdn.com
^https?:\/\/gw\.alicdn\.com\/tfs\/.+?\d{4}-\d{4}\/[a-z]{3}$ url reject-200
^https?:\/\/gw\.alicdn\.com\/tfs\/TB1.+?750-\d{4} url reject-200
^https?:\/\/heic\.alicdn\.com\/tps\/i4\/.+?\.jpg_1200x1200q90\.jpg_\.heic$ url reject-200
^https?:\/\/asp\.cntv\.myalicdn\.com\/.+?\?maxbr=850 url reject-200
^https?:\/\/(?>heic|gw)\.alicdn\.com\/tfs\/TB1.+?-\d{4}-\d{4}\.jpg_1200x1200q90\.jpg_\.\w{3,4}$ url reject-200
^https?:\/\/(gw|heic)\.alicdn\.com\/\w{2}s\/[\w\/.-]+\.jpg_(9\d{2}|\d{4}) url reject
^https?:\/\/(gw|heic)\.alicdn\.com\/imgextra\/\w{2}\/[\w!]+-\d-tps-\d{3,4}-\d{4}\.jpg_(1\d{3}|9\d{2})x(1\d{3}|9\d{2})q\d0\.jpg_\.(heic|webp)$ url reject
^https?:\/\/(gw|heic)\.alicdn\.com\/imgextra\/.+\d{4}-\d{4}\.jpg_(9\d{2}|\d{4}) url reject
^https:\/\/gw\.alicdn\.com\/mt\/ url reject
^https:\/\/gw\.alicdn\.com\/tfs\/.+\d{3,4}-\d{4} url reject

# >>>>>>>>>>>>>>> ✅ Y ✅ <<<<<<<<<<<<<<
# > 一号店
# hostname = venus.yhd.com
^https?:\/\/venus\.yhd\.com\/memhome\/launchConfig url reject

# > 云闪付
# hostname =wallet.95516.com
^https:\/\/wallet\.95516\.com(:10533)?\/s\/wl\/icon\/large\/1 url reject

# > 猿辅导
# hostname = xyst.yuanfudao.com
^https?:\/\/xyst\.yuanfudao\.com\/iphone\/splashesV\d url reject-200

# >>>>>>>>>>>>>>> ✅ Z ✅ <<<<<<<<<<<<<<
# > 招商银行
# hostname = webappcfg.paas.cmbchina.com
# 开屏广告
^https?:\/\/webappcfg\.paas\.cmbchina\.com\/v\d\/func\/getmarketconfig url reject-200
# 首页横幅广告
^https:\/\/mbmodule-openapi\.paas\.cmbchina\.com\/graphic\/v2\/module\/graphic url reject-dict

# > 掌上生活
# hostname = mbasecc.bas.cmbchina.com, mbasecc.bcs.cmbchina.com, intellicc.bcs.cmbchina.com
# 开屏广告
^https:\/\/mbasecc\.(bas|bcs)\.cmbchina\.com\/Edge\/api\/mlife\.clientface\.clientservice\.api\.advertiseService\/preCacheAdvertiseSec url reject-dict
# 设置栏目内广告
^https?:\/\/intellicc\.bas\.cmbchina\.com\/Edge\/api\/mlife\.intelli\.render\.api\.render\/getDynamicDataSec url reject
# 首页随机弹窗
^https?:\/\/intellicc\.bcs\.cmbchina\.com\/Edge\/api\/mlife\.intelli\.adrender\.api\.AdWork\/getAdsBySlotId url reject-dict

# > 中国银行
# hostname = mbs.boc.cn, mlife.jf365.boc.cn
^https:\/\/mbs\.boc\.cn\/ubas-mgateway-static\/images\/advertType\/.+.jpg url reject-200
# > 中国银行 缤纷生活
^https?:\/\/mlife\.jf365\.boc\.cn\/AppPrj\/FirstPic\.do\?txnId=2PIC000001 url reject-200

# > 中信银行
# hostname = wap.bank.ecitic.com, imcs.citicbank.com
^https?:\/\/wap.bank\.ecitic\.com:6443\/NMBFOServer\/cbframework\.do\?act=CUBEPAGEDATA url reject-200
# 开屏广告
^https:\/\/imcs\.citicbank\.com\/cloud\/.+(1125.+2436|1242.+2688|750.+1638|563.+1218) url reject-dict

# > 中国联通
# hostname = m.client.10010.com, m1.ad.10010.com, res.mall.10010.cn
^https?:\/\/m\.client\.10010\.com\/uniAdmsInterface\/getWelcomeAd url reject-200
^https?:\/\/m\.client\.10010\.com\/mobileService\/(activity|customer)\/(accountListData|get_client_adv|get_startadv) url reject-img
^https?:\/\/m\.client\.10010\.com\/mobileService\/customer\/getclientconfig\.htm url reject-dict
^https?:\/\/m\.client\.10010\.com\/uniAdmsInterface\/(getHomePageAd|getWelcomeAd) url reject-img
^https?:\/\/[^(apple|10010)]+\.(com|cn)\/(a|A)d(s|v)?(\/|\.js) url reject-img
^https?:\/\/m1\.ad\.10010\.com\/noticeMag\/images\/imageUpload\/2\d{3} url reject-img
^https?:\/\/res\.mall\.10010\.cn\/mall\/common\/js\/fa\.js?referer= url reject-img

# > 字节跳动
# hostname = *.pstatp.com, amemv.com, musical.com, snssdk.com, tiktokv.com, dsp.toutiao.com
;^https?:\/\/.+\.pstatp\.com\/img\/ad url reject-200
^https?:\/\/.+\.(amemv|musical|snssdk|tiktokv)\.com\/(api|motor)\/ad\/ url reject-200
^https?:\/\/.+\.snssdk\.com\/motor\/operation\/activity\/display\/config\/V2\/ url reject-200
^https?:\/\/dsp\.toutiao\.com\/api\/xunfei\/ads\/ url reject-200
^https?:\/\/[\w-]+\.amemv\.com\/aweme\/v\d\/ad\/ url reject
^https?:\/\/[\w-]+\.snssdk\.com\/.+_ad\/ url reject
^https?:\/\/.+\.amemv\.com\/.+app_log url reject-img
^https?:\/\/.+\.amemv\.com\/.+report url reject-img
^https?:\/\/.+\.amemv\.com\/.+stats url reject-img

# >>>>>>>>>>>>>>> ✅ # ✅ <<<<<<<<<<<<<<
