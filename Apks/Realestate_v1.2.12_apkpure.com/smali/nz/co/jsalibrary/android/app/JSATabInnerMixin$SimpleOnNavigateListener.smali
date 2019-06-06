.class public Lnz/co/jsalibrary/android/app/JSATabInnerMixin$SimpleOnNavigateListener;
.super Ljava/lang/Object;
.source "JSATabInnerMixin.java"

# interfaces
.implements Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnNavigateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSATabInnerMixin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnNavigateListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigateFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "toTag"    # Ljava/lang/String;

    .prologue
    .line 111
    return-void
.end method

.method public onNavigateTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "fromTag"    # Ljava/lang/String;

    .prologue
    .line 112
    return-void
.end method
