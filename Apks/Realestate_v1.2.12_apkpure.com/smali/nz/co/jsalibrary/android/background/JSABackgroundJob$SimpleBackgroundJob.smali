.class public abstract Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;
.super Ljava/lang/Object;
.source "JSABackgroundJob.java"

# interfaces
.implements Lnz/co/jsalibrary/android/background/JSABackgroundJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleBackgroundJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .param p4, "stoppable"    # Lnz/co/jsalibrary/android/service/JSAStoppableProcess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/os/Handler;",
            "Lnz/co/jsalibrary/android/service/JSAStoppableProcess;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Exception;",
            "Landroid/os/Handler;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;
    .param p5, "stoppable"    # Lnz/co/jsalibrary/android/service/JSAStoppableProcess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Exception;",
            "Landroid/os/Handler;",
            "Lnz/co/jsalibrary/android/service/JSAStoppableProcess;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
