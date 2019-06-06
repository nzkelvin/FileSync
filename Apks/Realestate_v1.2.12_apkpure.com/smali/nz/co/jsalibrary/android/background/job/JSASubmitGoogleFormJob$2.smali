.class Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$2;
.super Ljava/lang/Object;
.source "JSASubmitGoogleFormJob.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;->executeRow(Ljava/lang/String;[Ljava/lang/String;)Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/http/message/BasicNameValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;

    .prologue
    .line 137
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$2;->this$0:Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$2;->map(Ljava/lang/String;I)Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/String;I)Lorg/apache/http/message/BasicNameValuePair;
    .locals 5
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 139
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "entry.%d.single"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
