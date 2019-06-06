.class public Lnz/co/jsalibrary/android/widget/JSACheckableLayout;
.super Ljava/lang/Object;
.source "JSACheckableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;,
        Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;,
        Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;
    }
.end annotation


# static fields
.field private static final STATE_CHECKABLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout;->STATE_CHECKABLE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout;->STATE_CHECKABLE:[I

    return-object v0
.end method
