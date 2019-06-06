.class public Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$SimpleAsyncTaskListener;
.super Ljava/lang/Object;
.source "JSABackgroundJobLauncher.java"

# interfaces
.implements Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleAsyncTaskListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener",
        "<TResult;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$SimpleAsyncTaskListener;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$SimpleAsyncTaskListener<TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask",
            "<TResult;>;TResult;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$SimpleAsyncTaskListener;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$SimpleAsyncTaskListener<TResult;>;"
    .local p1, "asyncTask":Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask<TResult;>;"
    .local p2, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method public onPostExecute(Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask",
            "<TResult;>;TResult;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$SimpleAsyncTaskListener;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$SimpleAsyncTaskListener<TResult;>;"
    .local p1, "asyncTask":Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask<TResult;>;"
    .local p2, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method
