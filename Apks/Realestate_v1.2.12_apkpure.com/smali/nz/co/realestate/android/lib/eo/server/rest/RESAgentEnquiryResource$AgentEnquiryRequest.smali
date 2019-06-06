.class public final Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;
.super Ljava/lang/Object;
.source "RESAgentEnquiryResource.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AgentEnquiryRequest"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1255b8a732c02475L


# instance fields
.field private mEmail:Ljava/lang/String;

.field private mListingId:I

.field private mPhone:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "listingId"    # I
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "phone"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->mListingId:I

    .line 38
    iput-object p2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->mEmail:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->mPhone:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->mText:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 44
    if-eqz p1, :cond_0

    instance-of v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;

    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 45
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;

    .line 46
    .local v0, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;
    iget v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->mListingId:I

    iget v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->mListingId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->mEmail:Ljava/lang/String;

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->mEmail:Ljava/lang/String;

    .line 47
    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->mPhone:Ljava/lang/String;

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->mPhone:Ljava/lang/String;

    .line 48
    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->mText:Ljava/lang/String;

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->mText:Ljava/lang/String;

    .line 49
    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getListingId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->mListingId:I

    return v0
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
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "email"

    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->mEmail:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "phone"

    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->mPhone:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "text"

    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->mText:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-object v0
.end method
