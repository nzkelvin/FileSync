.class public Lnz/co/jsalibrary/android/deprecated/JSAModel$Trojan;
.super Ljava/lang/Object;
.source "JSAModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/deprecated/JSAModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trojan"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runOnBackgroundThread(Lnz/co/jsalibrary/android/deprecated/JSAModel;Ljava/lang/Runnable;)Z
    .locals 1
    .param p0, "model"    # Lnz/co/jsalibrary/android/deprecated/JSAModel;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->runOnBackgroundThread(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
