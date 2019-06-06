.class public Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;
.super Ljava/lang/Object;
.source "JSANotificationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSANotificationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationTextStyle"
.end annotation


# instance fields
.field private mTextColor:I

.field private mTextSize:F


# direct methods
.method private constructor <init>(FI)V
    .locals 0
    .param p1, "textSize"    # F
    .param p2, "textColor"    # I

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput p1, p0, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;->mTextSize:F

    .line 244
    iput p2, p0, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;->mTextColor:I

    .line 245
    return-void
.end method

.method synthetic constructor <init>(FILnz/co/jsalibrary/android/util/JSANotificationUtil$1;)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnz/co/jsalibrary/android/util/JSANotificationUtil$1;

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;-><init>(FI)V

    return-void
.end method


# virtual methods
.method public getTextColor()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;->mTextColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;->mTextSize:F

    return v0
.end method
