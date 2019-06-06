.class public Lnz/co/jsalibrary/android/app/JSAApplication$Trojan;
.super Ljava/lang/Object;
.source "JSAApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trojan"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerActivityCreation(Lnz/co/jsalibrary/android/app/JSAApplication;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "application"    # Lnz/co/jsalibrary/android/app/JSAApplication;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 614
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/app/JSAApplication;->registerActivityCreation(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 615
    return-void
.end method
