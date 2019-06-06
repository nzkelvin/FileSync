.class public Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;
.super Ljava/lang/Object;
.source "JSANotificationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSANotificationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationProperties"
.end annotation


# instance fields
.field private mContentStyle:Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

.field private mTitleStyle:Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;

    .prologue
    .line 221
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->mTitleStyle:Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    return-object v0
.end method

.method static synthetic access$002(Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;
    .param p1, "x1"    # Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    .prologue
    .line 221
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->mTitleStyle:Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    return-object p1
.end method

.method static synthetic access$100(Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;

    .prologue
    .line 221
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->mContentStyle:Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    return-object v0
.end method

.method static synthetic access$102(Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;
    .param p1, "x1"    # Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    .prologue
    .line 221
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->mContentStyle:Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    return-object p1
.end method


# virtual methods
.method public getContentStyle()Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->mContentStyle:Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    return-object v0
.end method

.method public getTitleStyle()Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->mTitleStyle:Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    return-object v0
.end method
