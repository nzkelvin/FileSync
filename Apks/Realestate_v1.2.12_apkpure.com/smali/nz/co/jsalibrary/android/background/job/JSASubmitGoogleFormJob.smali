.class public Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;
.source "JSASubmitGoogleFormJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob",
        "<",
        "Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_MAX_THREAD_COUNT:I = 0x4

.field protected static final FORM_KEY:Ljava/lang/String; = "form_key"

.field protected static final MAX_THREAD_COUNT:Ljava/lang/String; = "max_thread_count"

.field protected static final ROWS:Ljava/lang/String; = "rows"

.field protected static final ROW_VALUES:Ljava/lang/String; = "row_values"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;Ljava/lang/String;[Ljava/lang/String;)Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;->executeRow(Ljava/lang/String;[Ljava/lang/String;)Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;

    move-result-object v0

    return-object v0
.end method

.method public static buildBundle(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;
    .locals 1
    .param p0, "formKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;->buildBundle(Ljava/lang/String;Ljava/util/List;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static buildBundle(Ljava/lang/String;Ljava/util/List;I)Landroid/os/Bundle;
    .locals 3
    .param p0, "formKey"    # Ljava/lang/String;
    .param p2, "maxThreadCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 72
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "form_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    instance-of v2, p1, Ljava/io/Serializable;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "rows":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    move-object v1, p1

    .line 75
    .local v1, "sRows":Ljava/io/Serializable;
    :goto_0
    const-string v2, "rows"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 76
    const-string v2, "max_thread_count"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    return-object v0

    .line 74
    .end local v1    # "sRows":Ljava/io/Serializable;
    .restart local p1    # "rows":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static varargs buildBundle(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "formKey"    # Ljava/lang/String;
    .param p1, "rowValues"    # [Ljava/lang/String;

    .prologue
    .line 53
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 54
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "form_key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "row_values"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 57
    return-object v0
.end method

.method private executeRow(Ljava/lang/String;[Ljava/lang/String;)Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;
    .locals 7
    .param p1, "formKey"    # Ljava/lang/String;
    .param p2, "rowValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 137
    new-instance v3, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$2;

    invoke-direct {v3, p0}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$2;-><init>(Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;)V

    invoke-static {p2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;)Ljava/util/ArrayList;

    move-result-object v1

    .line 143
    .local v1, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 144
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "https://spreadsheets.google.com/spreadsheet/formResponse?hl=en_US&formkey=%s"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v3, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 146
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 149
    new-instance v3, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;

    invoke-direct {v3, v6}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;-><init>(Z)V

    return-object v3
.end method

.method private executeRows(Ljava/lang/String;Ljava/util/List;I)Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;
    .locals 5
    .param p1, "formKey"    # Ljava/lang/String;
    .param p3, "maxThreadCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;I)",
            "Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;"
        }
    .end annotation

    .prologue
    .local p2, "rows":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 116
    new-instance v2, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$1;

    invoke-direct {v2, p0, p1}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$1;-><init>(Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;Ljava/lang/String;)V

    const-class v3, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;

    .line 124
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {p2, v2, p3, v3}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->map(Ljava/util/List;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 127
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    new-instance v2, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toPrimitiveBoolean(Ljava/util/Collection;)[Z

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;-><init>(Z[Z)V

    return-object v2
.end method


# virtual methods
.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    const-string v4, "form_key"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "formKey":Ljava/lang/String;
    const-string v4, "row_values"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v2, v4

    check-cast v2, [Ljava/lang/String;

    .line 87
    .local v2, "rowValues":[Ljava/lang/String;
    const-string v4, "rows"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 88
    .local v3, "rows":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const-string v4, "max_thread_count"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 91
    .local v1, "maxThreadCount":I
    if-nez v0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 94
    :cond_0
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 97
    :cond_1
    if-eqz v2, :cond_2

    array-length v4, v2

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 100
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 103
    :cond_3
    if-eqz v3, :cond_4

    invoke-direct {p0, v0, v3, v1}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;->executeRows(Ljava/lang/String;Ljava/util/List;I)Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;

    move-result-object v4

    .line 106
    :goto_0
    return-object v4

    :cond_4
    invoke-direct {p0, v0, v2}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;->executeRow(Ljava/lang/String;[Ljava/lang/String;)Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;

    move-result-object v4

    goto :goto_0
.end method

.method protected getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-object v0
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 165
    new-instance v0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;-><init>(Z)V

    return-object v0
.end method

.method protected onExecuteRowException(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "formKey"    # Ljava/lang/String;
    .param p2, "row"    # [Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 157
    const-string v0, "error submitting google form"

    invoke-static {v0, p3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 158
    return-void
.end method
