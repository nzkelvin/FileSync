.class Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$1;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;
.source "JSABackgroundJobLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher;->getAsyncTask(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/os/Bundle;Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener;)Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher;

.field final synthetic val$listener:Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher;Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 113
    .local p2, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TResult;>;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$1;->this$0:Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher;

    iput-object p5, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$1;->val$listener:Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener;

    invoke-direct {p0, p2, p3, p4}, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected onCancelled(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$1;->val$listener:Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$1;->val$listener:Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener;

    invoke-interface {v0, p0, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener;->onCancelled(Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;Ljava/lang/Object;)V

    .line 121
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$1;->val$listener:Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$1;->val$listener:Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener;

    invoke-interface {v0, p0, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener;->onPostExecute(Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;Ljava/lang/Object;)V

    .line 117
    :cond_0
    return-void
.end method
