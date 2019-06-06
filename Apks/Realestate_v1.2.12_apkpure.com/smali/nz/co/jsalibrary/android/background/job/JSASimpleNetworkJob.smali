.class public abstract Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;
.source "JSASimpleNetworkJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;-><init>()V

    return-void
.end method


# virtual methods
.method protected constructClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->constructClient(Lorg/apache/http/HttpVersion;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method protected constructClient(Lorg/apache/http/HttpVersion;)Lorg/apache/http/client/HttpClient;
    .locals 1
    .param p1, "httpVersion"    # Lorg/apache/http/HttpVersion;

    .prologue
    .line 144
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->constructClient(Lorg/apache/http/HttpVersion;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method protected delete(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->delete(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected delete(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->constructClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->delete(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected delete(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    invoke-static {p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->delete(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected encodeParameters(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v0, "UTF-8"

    const/16 v1, 0x26

    invoke-virtual {p0, p1, v0, v1}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->encodeParameters(Ljava/util/List;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeParameters(Ljava/util/List;Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->encodeParameters(Ljava/util/List;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected get(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->get(Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "zip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->get(Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected get(Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "zip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->constructClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->get(Lorg/apache/http/client/HttpClient;Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected varargs get(Ljava/lang/String;Z[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "zip"    # Z
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    if-eqz p3, :cond_0

    invoke-static {p3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->get(Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected varargs get(Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->get(Ljava/lang/String;Z[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected get(Lorg/apache/http/client/HttpClient;Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "zip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    .local p4, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    invoke-static {p1, p2, p3, p4}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->get(Lorg/apache/http/client/HttpClient;Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected getResponseString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->getResponseString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected postJsonEncodedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    .local p4, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->constructClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->postJsonEncodedString(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected postJsonEncodedString(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0, p3}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->postJsonEncodedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected postJsonEncodedString(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "json"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    .local p5, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    invoke-static {p1, p2, p3, p4, p5}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->postJsonEncodedString(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected postUrlEncodedForm(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/NameValuePair;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->constructClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;->postUrlEncodedForm(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected postUrlEncodedForm(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    .local p3, "parameters":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/NameValuePair;>;"
    .local p5, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    invoke-static {p1, p2, p3, p4, p5}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->postUrlEncodedForm(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob;, "Lnz/co/jsalibrary/android/background/job/JSASimpleNetworkJob<TT;>;"
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
