.class public Lnz/co/jsalibrary/android/util/JSANetworkUtil;
.super Ljava/lang/Object;
.source "JSANetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/util/JSANetworkUtil$BasicAuthHeader;,
        Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->constructClient(Lorg/apache/http/HttpVersion;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static constructClient(Lorg/apache/http/HttpVersion;)Lorg/apache/http/client/HttpClient;
    .locals 3
    .param p0, "httpVersion"    # Lorg/apache/http/HttpVersion;

    .prologue
    .line 370
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 371
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.protocol.version"

    invoke-interface {v1, v2, p0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 372
    return-object v0
.end method

.method public static delete(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->delete(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "url"    # Ljava/lang/String;
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
    .line 329
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "delete":Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 331
    .local v1, "header":Lorg/apache/http/Header;
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 332
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_0
    invoke-interface {p0, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2
.end method

.method public static encodeParameters(Ljava/util/List;)Ljava/lang/String;
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
    .line 219
    .local p0, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v0, "UTF-8"

    const/16 v1, 0x26

    invoke-static {p0, v0, v1}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->encodeParameters(Ljava/util/List;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeParameters(Ljava/util/List;Ljava/lang/String;C)Ljava/lang/String;
    .locals 7
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "separator"    # C
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
    .line 224
    .local p0, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 226
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/NameValuePair;

    .line 227
    .local v4, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "a":Ljava/lang/String;
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "b":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "b":Ljava/lang/String;
    .end local v4    # "pair":Lorg/apache/http/NameValuePair;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static get(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->get(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static get(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "url"    # Ljava/lang/String;
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
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->get(Lorg/apache/http/client/HttpClient;Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static get(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "zip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->get(Lorg/apache/http/client/HttpClient;Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static get(Lorg/apache/http/client/HttpClient;Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "zip"    # Z
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
    .line 267
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "get":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p2, :cond_0

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    .line 269
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 270
    .local v1, "header":Lorg/apache/http/Header;
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 271
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_1
    invoke-interface {p0, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2
.end method

.method public static varargs get(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Z[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
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
    .line 255
    if-eqz p3, :cond_0

    invoke-static {p3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->get(Lorg/apache/http/client/HttpClient;Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs get(Lorg/apache/http/client/HttpClient;Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->get(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Z[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static getIpAddress()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->getIpAddress(Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIpAddress(Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;)Ljava/lang/String;
    .locals 13
    .param p0, "type"    # Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 149
    if-eqz p0, :cond_4

    sget-object v9, Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;->IPV4:Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;

    invoke-virtual {p0, v9}, Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 150
    .local v6, "isRequestIPv4":Ljava/lang/Boolean;
    :goto_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    .line 151
    .local v4, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 152
    .local v3, "interf":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 153
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 154
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v11

    if-nez v11, :cond_1

    .line 155
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, "sAddr":Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v5

    .line 157
    .local v5, "isIPv4":Z
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-ne v5, v11, :cond_1

    .line 158
    :cond_2
    if-eqz v5, :cond_5

    .line 164
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v3    # "interf":Ljava/net/NetworkInterface;
    .end local v5    # "isIPv4":Z
    .end local v7    # "sAddr":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v7

    .end local v4    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v6    # "isRequestIPv4":Ljava/lang/Boolean;
    :cond_4
    move-object v6, v8

    .line 149
    goto :goto_0

    .line 159
    .restart local v0    # "address":Ljava/net/InetAddress;
    .restart local v1    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v3    # "interf":Ljava/net/NetworkInterface;
    .restart local v4    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .restart local v5    # "isIPv4":Z
    .restart local v6    # "isRequestIPv4":Ljava/lang/Boolean;
    .restart local v7    # "sAddr":Ljava/lang/String;
    :cond_5
    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 160
    .local v2, "delim":I
    if-ltz v2, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v2    # "delim":I
    .end local v3    # "interf":Ljava/net/NetworkInterface;
    .end local v5    # "isIPv4":Z
    .end local v7    # "sAddr":Ljava/lang/String;
    :cond_6
    move-object v7, v8

    .line 164
    goto :goto_1
.end method

.method public static getMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "networkInterfaceName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->isGingerbread()Z

    move-result v6

    if-nez v6, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v5

    .line 99
    :cond_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    .line 100
    .local v3, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 102
    .local v2, "interf":Ljava/net/NetworkInterface;
    if-eqz p0, :cond_3

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    :cond_3
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v4

    .line 105
    .local v4, "mac":[B
    if-eqz v4, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 109
    const-string v5, "%02X:"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-byte v8, v4, v1

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 112
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->getProxyHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProxyHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "proxyHost"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 192
    .local v0, "proxyHostObject":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getProxyPort()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, -0x1

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->getProxyPort(I)I

    move-result v0

    return v0
.end method

.method public static getProxyPort(I)I
    .locals 4
    .param p0, "defaultValue"    # I

    .prologue
    .line 207
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "proxyPort"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 208
    .local v1, "proxyPortObject":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    .line 210
    .end local v1    # "proxyPortObject":Ljava/lang/Object;
    .end local p0    # "defaultValue":I
    :cond_0
    :goto_0
    return p0

    .line 209
    .restart local p0    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 210
    .local v0, "exception":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getResponseString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 69
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 70
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v3

    .line 71
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 72
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 74
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 73
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isProxySet()Z
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "proxySet"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 59
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 60
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    goto :goto_0
.end method

.method public static mapHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 6
    .param p0, "headers"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "headers cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 399
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 400
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 401
    .local v0, "header":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_1
    return-object v1
.end method

.method public static postJsonEncodedString(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
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
    .line 308
    .local p4, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 309
    .local v1, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 310
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 311
    .local v0, "header":Lorg/apache/http/Header;
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 312
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_0
    if-eqz p2, :cond_1

    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, p2, p3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 313
    :cond_1
    invoke-interface {p0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2
.end method

.method public static postJsonEncodedString(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
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
    .line 302
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    const-string v0, "UTF-8"

    invoke-static {p0, p1, p2, v0, p3}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->postJsonEncodedString(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static postUrlEncodedForm(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
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
    .line 287
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/NameValuePair;>;"
    .local p4, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 288
    .local v1, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 289
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 290
    .local v0, "header":Lorg/apache/http/Header;
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 291
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_0
    if-eqz p2, :cond_1

    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v2, p2, p3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 292
    :cond_1
    invoke-interface {p0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2
.end method

.method public static postUrlEncodedForm(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
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
    .line 281
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/NameValuePair;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    const-string v0, "UTF-8"

    invoke-static {p0, p1, p2, v0, p3}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->postUrlEncodedForm(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 7
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    const-string v5, "Content-Encoding"

    invoke-interface {p0, v5}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 349
    .local v1, "headers":[Lorg/apache/http/Header;
    array-length v5, v1

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 358
    :goto_0
    return-object v5

    .line 352
    :cond_1
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 353
    .local v2, "in":Ljava/util/zip/GZIPInputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 354
    .local v4, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 356
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 357
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 358
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
