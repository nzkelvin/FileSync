.class Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$1;
.super Ljava/lang/Object;
.source "JSASubmitGoogleFormJob.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;->executeRows(Ljava/lang/String;Ljava/util/List;I)Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<[",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;

.field final synthetic val$formKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;

    .prologue
    .line 116
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$1;->this$0:Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;

    iput-object p2, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$1;->val$formKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "item"    # [Ljava/lang/String;

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$1;->this$0:Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;

    iget-object v2, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$1;->val$formKey:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;->access$000(Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;Ljava/lang/String;[Ljava/lang/String;)Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;->access$100(Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 122
    :goto_0
    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "exception":Ljava/lang/Exception;
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$1;->this$0:Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;

    iget-object v2, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$1;->val$formKey:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;->onExecuteRowException(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Exception;)V

    .line 122
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$1;->map([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
