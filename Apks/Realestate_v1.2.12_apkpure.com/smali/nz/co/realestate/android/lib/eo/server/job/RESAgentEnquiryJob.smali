.class public final Lnz/co/realestate/android/lib/eo/server/job/RESAgentEnquiryJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESAgentEnquiryJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final AGENT_ENQUIRY_REQUEST:Ljava/lang/String; = "agentEnquiryRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundleAgentEnquiry(Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;)Landroid/os/Bundle;
    .locals 2
    .param p0, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;

    .prologue
    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "agentEnquiryRequest"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 33
    return-object v0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Integer;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 41
    if-eqz p2, :cond_0

    const-string v6, "agentEnquiryRequest"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;

    move-object v2, v6

    .line 44
    .local v2, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;
    :goto_0
    new-instance v6, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v9, Lnz/co/realestate/android/lib/R$string;->sending_enquiry:I

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, p1, v9}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    invoke-virtual {v2}, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->getPairs()Ljava/util/List;

    move-result-object v1

    .line 48
    .local v1, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz v1, :cond_1

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/server/job/RESAgentEnquiryJob;->encodePairs(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "body":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;->getListingId()I

    move-result v6

    invoke-static {v6}, Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$Url;->getRequestPath(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7, v0}, Lnz/co/realestate/android/lib/eo/server/job/RESAgentEnquiryJob;->constructUrlHttp(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {p0, v5, v1}, Lnz/co/realestate/android/lib/eo/server/job/RESAgentEnquiryJob;->postUrlEncoded(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 53
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xca

    if-ne v6, v7, :cond_2

    const/4 v4, 0x1

    .line 56
    .local v4, "success":Z
    :goto_2
    if-eqz v4, :cond_3

    const-string v6, "sendAgentEnquiryComplete"

    :goto_3
    invoke-static {p1, v6}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    new-instance v6, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v7, Lnz/co/realestate/android/lib/R$string;->enquiry_sent:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v2    # "request":Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "success":Z
    .end local v5    # "url":Ljava/lang/String;
    :cond_0
    move-object v2, v7

    .line 41
    goto :goto_0

    .restart local v1    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v2    # "request":Lnz/co/realestate/android/lib/eo/server/rest/RESAgentEnquiryResource$AgentEnquiryRequest;
    :cond_1
    move-object v0, v7

    .line 48
    goto :goto_1

    .restart local v0    # "body":Ljava/lang/String;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_2
    move v4, v8

    .line 53
    goto :goto_2

    .line 56
    .restart local v4    # "success":Z
    :cond_3
    const-string v6, "sendAgentEnquiryFailed"

    goto :goto_3
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESAgentEnquiryJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Integer;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x1

    .line 66
    const-string v0, "sendAgentEnquiryFailed"

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_sending_agent_enquiry:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESAgentEnquiryJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
