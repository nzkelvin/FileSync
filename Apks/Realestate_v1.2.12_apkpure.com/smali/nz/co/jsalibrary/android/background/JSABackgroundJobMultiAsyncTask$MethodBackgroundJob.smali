.class public Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$MethodBackgroundJob;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;
.source "JSABackgroundJobMultiAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodBackgroundJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mMethod:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$MethodBackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$MethodBackgroundJob<TT;>;"
    .local p1, "method":Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod<TT;>;"
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;-><init>()V

    .line 383
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$MethodBackgroundJob;->mMethod:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;

    .line 384
    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/os/Handler;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$MethodBackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$MethodBackgroundJob<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$MethodBackgroundJob;->mMethod:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;

    invoke-interface {v0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;->execute()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
