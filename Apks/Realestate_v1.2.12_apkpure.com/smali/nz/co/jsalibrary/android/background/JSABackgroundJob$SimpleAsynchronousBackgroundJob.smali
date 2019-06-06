.class public abstract Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;
.source "JSABackgroundJob.java"

# interfaces
.implements Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleAsynchronousBackgroundJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob",
        "<TT;>;",
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mJobTerminator:Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob<TT;>;"
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;-><init>()V

    return-void
.end method


# virtual methods
.method public getJobTerminator()Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob;->mJobTerminator:Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    return-object v0
.end method

.method public setJobTerminator(Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;)V
    .locals 0
    .param p1, "terminator"    # Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    .prologue
    .line 121
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob<TT;>;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob;->mJobTerminator:Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    .line 122
    return-void
.end method
