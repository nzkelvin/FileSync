.class public Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;
.super Ljava/lang/Object;
.source "JSABackgroundJobMultiAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TaskInfo"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<*>;"
        }
    .end annotation
.end field

.field protected mJobBundle:Landroid/os/Bundle;

.field protected mJobIndex:I

.field protected mResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
