.class public final Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$RegisterRequest;
.super Ljava/lang/Object;
.source "RESMyPropertyResource.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegisterRequest"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1255b8a732c02475L


# instance fields
.field private mEmail:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$RegisterRequest;->mEmail:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$RegisterRequest;->mPassword:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$RegisterRequest;->mName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 46
    if-eqz p1, :cond_0

    instance-of v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$RegisterRequest;

    if-nez v2, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 47
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$RegisterRequest;

    .line 48
    .local v0, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$RegisterRequest;
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$RegisterRequest;->mEmail:Ljava/lang/String;

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$RegisterRequest;->mEmail:Ljava/lang/String;

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$RegisterRequest;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$RegisterRequest;->mPassword:Ljava/lang/String;

    .line 49
    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$RegisterRequest;->mName:Ljava/lang/String;

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$RegisterRequest;->mName:Ljava/lang/String;

    .line 50
    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPairs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "email"

    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$RegisterRequest;->mEmail:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "password"

    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$RegisterRequest;->mPassword:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "name"

    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$RegisterRequest;->mName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-object v0
.end method
