.class public interface abstract Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener;
.super Ljava/lang/Object;
.source "JSABackgroundJobLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AsyncTaskListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCancelled(Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask",
            "<TResult;>;TResult;)V"
        }
    .end annotation
.end method

.method public abstract onPostExecute(Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask",
            "<TResult;>;TResult;)V"
        }
    .end annotation
.end method
