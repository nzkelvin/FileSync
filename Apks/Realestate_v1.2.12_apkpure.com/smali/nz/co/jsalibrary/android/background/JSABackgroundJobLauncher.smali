.class public abstract Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher;
.super Ljava/lang/Object;
.source "JSABackgroundJobLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$SimpleAsyncTaskListener;,
        Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method


# virtual methods
.method protected getAsyncTask(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/os/Bundle;Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener;)Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;
    .locals 6
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<TResult;>;",
            "Landroid/os/Bundle;",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener",
            "<TResult;>;)",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TResult;>;"
    .local p3, "listener":Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener<TResult;>;"
    new-instance v0, Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$1;

    iget-object v3, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$1;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher;Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher$AsyncTaskListener;)V

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobLauncher;->mContext:Landroid/content/Context;

    return-object v0
.end method
