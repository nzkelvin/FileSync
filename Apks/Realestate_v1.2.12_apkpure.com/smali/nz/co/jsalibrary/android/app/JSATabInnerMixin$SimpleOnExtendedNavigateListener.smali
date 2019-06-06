.class public Lnz/co/jsalibrary/android/app/JSATabInnerMixin$SimpleOnExtendedNavigateListener;
.super Ljava/lang/Object;
.source "JSATabInnerMixin.java"

# interfaces
.implements Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnExtendedNavigateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSATabInnerMixin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnExtendedNavigateListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigate(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "tabHostId"    # I
    .param p2, "fromTag"    # Ljava/lang/String;
    .param p3, "toTag"    # Ljava/lang/String;
    .param p4, "fromIndex"    # I
    .param p5, "toIndex"    # I

    .prologue
    .line 120
    return-void
.end method

.method public onNavigateFrom(ILjava/lang/String;I)V
    .locals 0
    .param p1, "tabHostId"    # I
    .param p2, "toTag"    # Ljava/lang/String;
    .param p3, "toIndex"    # I

    .prologue
    .line 121
    return-void
.end method

.method public onNavigateFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "toTag"    # Ljava/lang/String;

    .prologue
    .line 123
    return-void
.end method

.method public onNavigateTo(ILjava/lang/String;I)V
    .locals 0
    .param p1, "tabHostId"    # I
    .param p2, "fromTag"    # Ljava/lang/String;
    .param p3, "fromIndex"    # I

    .prologue
    .line 122
    return-void
.end method

.method public onNavigateTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "fromTag"    # Ljava/lang/String;

    .prologue
    .line 124
    return-void
.end method
