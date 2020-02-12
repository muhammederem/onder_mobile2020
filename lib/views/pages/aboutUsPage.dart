import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import "package:onder_mobile2020/models/stable_pages_model.dart";
import 'dart:convert';

class AboutUsPage extends StatefulWidget {
  StablePages stable;
  AboutUsPage(this.stable);
  @override
  _AboutUsPageState createState() => _AboutUsPageState(stable);
}

class _AboutUsPageState extends State<AboutUsPage> {
  StablePages stable;
  _AboutUsPageState(this.stable);

  @override
  Widget build(BuildContext context) {
    String text = stable.text;
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    String decoded = stringToBase64.decode(text);

    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/logo.png"),
      ),
      body: SingleChildScrollView(
        
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Center(
              child: Text(
                stable.name,
                style: TextStyle(
                    fontSize: 28.0,
                    fontFamily: "Arial",
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 25),
              child: Html(data: decoded),
            )
          ],
        ),
      ),
    );
    //    String text =
    //      "xLBtYW0gSGF0aXAgTGlzZWxlcmluaW4gaWxrIG7DvHZlc2k7IE9zbWFubMSxIERldmxldGnigJluaW4gc29uIGTDtm5lbWluZGUgdmFpeiB5ZXRpxZ90aXJtZWsgYW1hY8SxeWxhIDE5MTIgecSxbMSxbmRhIGHDp8SxbGFuIE1lZHJlc2V0w7zigJlsLVZhaXppbiBpbGUgaW1hbSB2ZSBoYXRpcCB5ZXRpxZ90aXJtZWsgw7x6ZXJlIDE5MTPigJl0ZSBhw6fEsWxhbiBNZWRyZXNldMO84oCZbC1FaW1tZSB2ZeKAmWwtSHV0ZWJh4oCZZMSxci4gQnUgaWtpIG1lZHJlc2UgMTkxOeKAmWRhIE1lZHJlc2V0w7zigJlsLcSwcsWfYWQgYWTEsXlsYSBiaXJsZcWfdGlyaWxkaS4KCkJ1bmRhbiBpa2kgecSxbCBzb25yYSwgOCBNYXnEsXMgMTkyMeKAmWRlIE1lZMOicmlzLWkgxLBsbWl5ZSBOaXphbW5hbWVzaSwgeWFuaSAiQmlsaW0gTWVkcmVzZWxlcmkgS2FudW5uYW1lc2nigJ0gw6fEsWt0xLEuIEJ1IG5pemFtbmFtZSwgxLBtYW0gSGF0aXAgTGlzZWxlcmluaW4gaWxrIHByb3RvdGlwaSBvbGFyYWsga2FidWwgZWRpbGViaWxlY2VrIG9sYW4gb2t1bGxhcsSxbiBtw7xmcmVkYXTEsW7EsSwgYnVnw7xua8O8IGltYW0gaGF0aXAgb2t1bGxhcsSxbsSxbiBtw7xmcmVkYXTEsW5hIGJlbnplciBiaXIgxZ9la2lsZGUgZMO8emVubGVtacWfdGkuIFRCTU0gdGFyYWbEsW5kYW4gYcOnxLFsYXJhayBzYXnEsWxhcsSxIDQ2NcK0aSBidWxhbiB2ZSBoZW0gZmVuIGJpbGltbGVyaSwgaGVtIGRlIGRpbmkgYmlsaW1sZXJpbiBiaXIgYXJhZGEgdmVyaWxkacSfaSBidSBpbGsgQ3VtaHVyaXlldCBva3VsbGFyxLEsIDE5MjQgecSxbMSxbmRhIFRldmhpZC1pIFRlZHJpc2F0IEthbnVudcK0bnVuIGthYnVsIGVkaWxtZXNpbmRlbiBzb25yYSBrYXBhdMSxbGTEsS4gWWVuaSBrYW51bmxhIGJpcmxpa3RlIGlsayBrZXogImltYW0gaGF0aXAiIGlzbWkgZGUga3VsbGFuxLFsbWF5YSBiYcWfbGFkxLEuIFllbmkga2FudW4gZGluIGFkYW3EsSB5ZXRpxZ90aXJtZWsgw7x6ZXJlICLEsG1hbSBIYXRpcCBNZWt0ZXBsZXJpIiBhw6fEsWxtYXPEsW7EsSDDtm5nw7Zyw7x5b3JkdS4gQW5jYWsga2FwYXTEsWxhbiB5w7x6bGVyY2UgbWVkcmVzZSBrYXLFn8SxbMSxxJ/EsW5kYSBzYWRlY2UgMjkgeWVyZGUgxLBtYW0gSGF0aXAgTWVrdGViaSBhw6fEsWxkxLEuIEJ1IHNhecSxIGlzZSBoZXIgecSxbCBiaXJheiBkYWhhIGF6YWxhcmFrIDE5MzLigJlkZSDEsG1hbSBIYXRpcCBNZWt0ZXBsZXJpIHRhbWFtZW4ga2FwYXTEsWxkxLEuCgpPa3VsbGFyLCAxOTQ5IHnEsWzEsW5kYSB0ZWtyYXIgYcOnxLFsZMSxxJ/EsW5kYSBhZMSxIOKAnMSwbWFtIEhhdGlwIEt1cnNsYXLEseKAnXlkxLEuIERlbW9rcmF0IFBhcnRpIGlrdGlkYXLEsSBzb25yYXPEsW5kYSBDZWxhbGVkZGluIMOWa3RlbiBob2NhbsSxbiBwcm9qZXNpbmkgaGF6xLFybGF5xLFwIGjDvGvDvG1ldGUga2FidWwgZXR0aXJkacSfaSBpbWFtIGhhdGlwIG9rdWxsYXLEsSBpc2UgMTk1MSB5xLFsxLFuZGEgeWVuaWRlbiBhw6fEsWxkxLEuIMSwbGsga3VydWxhbiBva3VsIMSwc3RhbmJ1bCDEsG1hbSBIYXRpcCBMaXNlc2kgb2x1cmtlbiwgb251IDYgb2t1bCBkYWhhIHRha2lwIGV0dGkuIEF5bsSxIHnEsWwsIMSwc3RhbmJ1bCwgQW5rYXJhLCBLb255YSwgQWRhbmEsIElzcGFydGEsIEtheXNlcmkgdmUgS2FocmFtYW5tYXJhxZ8ndGEgaWxrIGltYW0gaGF0aXAgb2t1bGxhcsSxIGHDp8SxbGTEsS4gMTk2OSB5xLFsxLFuZGEgZGEgSXNwYXJ0YeKAmWRhIGlsayBrxLF6IGltYW0gaGF0aXAgb2t1bHVudW4gdGVtZWxpIGF0xLFsZMSxLgoKxLBtYW0gaGF0aXBsZXJsZSBpbGdpbGkgYnUgZ2VsacWfbWVsZXIgeWHFn2FuxLFya2VuLCDEsHN0YW5idWwgxLBtYW0gSGF0aXAgT2t1bHVgbnVuIGlsayBtZXp1bmxhcsSxIHRhcmFmxLFuZGFuIDE5NTggecSxbMSxbmRhIOKAnMSwc3RhbmJ1bCDEsG1hbSBIYXRpcCBPa3VsdSBNZXp1bmxhciBDZW1peWV0aeKAnSBpc21peWxlIGRlcm5lxJ9pbWl6IGt1cnVsZHUuIDE5ODAgxLBodGlsYWxpYG5kZW4gc29ucmEgaXNtaW5kZWtpICLEsHN0YW5idWwiIGlmYWRlc2kgw6fEsWthcsSxbGTEsS4gxLBtYW0ga2VsaW1lc2luaW4gVMO8cmvDp2Uga2FyxZ/EsWzEscSfxLEgb2xhbiAiw5ZOREVSIiBpYmFyZXNpIGVrbGVuZXJlayBpc21pIMOWTkRFUiDEsG1hbSBIYXRpcGxpbGVyIERlcm5lxJ9pIG9sZHUuCgpEZXZhbSBlZGVuIHnEsWxsYXJkYSBwZWsgw6dvayB5ZW5pbGlrLCBkZcSfacWfaWtsaWsgeWHFn2FuZMSxIGFuY2FrIGltYW0gaGF0aXBsZXJpbiBoYXlhdMSxIGhlcCBtw7xjYWRlbGV5bGUgZ2XDp3RpLiAxOTk3IHnEsWzEsW5kYSBpc2UgaW1hbSBoYXRpcGxlcmkgMjggxZ51YmF0IGRhcmJlc2kgdnVyZHUuIE9rdWxsYXLEsW4gb3J0YSBrxLFzbcSxIGthcGF0xLFsxLFya2VuLCDDvG5pdmVyc2l0ZXllIGdlw6dpxZ90ZSBrYXRzYXnEsSBlbmdlbGkga29uZHUuIDIwMDnigJlkYSBrYXRzYXnEsSB1eWd1bGFtYXPEsSBrYWxkxLFyxLFsZMSxLCAyMDEy4oCZZGUgZGUgMTUgecSxbCBhcmFkYW4gc29ucmEgaW1hbSBoYXRpcCBva3VsbGFyxLFuxLFuIG9ydGEga8Sxc23EsSB5ZW5pZGVuIGHDp8SxbGTEsS4gQnVnw7xuIFTDvHJraXll4oCZZGUg4oCccHJvamUgb2t1bGxhcuKAnSBiYcWfbMSxxJ/EsSBhbHTEsW5kYSBmZW4gdmUgc29zeWFsIGJpbGltbGVyLCBkaWwsIHNhbmF0LCBzcG9yIHZlIGhhZsSxemzEsWsgYWxhbsSxbmRha2kgaW1hbSBoYXRpcGxlcmluIHlhbsSxc8SxcmEsIHVsdXNsYXJhcmFzxLEgaW1hbSBoYXRpcGxlciBkZSBmYWFsaXlldCBnw7ZzdGVyaXlvci4gWXVydGTEscWfxLFuZGEgaXNlIDIyIMO8bGtlZGUgNTQgaW1hbSBoYXRpcCBsaXNlc2kgYnVsdW51eW9yLg==";
    //    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    //    String decoded = stringToBase64.decode(text);
    // String photo="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";
    // Uint8List pic=base64Decode(photo);
  }
}
