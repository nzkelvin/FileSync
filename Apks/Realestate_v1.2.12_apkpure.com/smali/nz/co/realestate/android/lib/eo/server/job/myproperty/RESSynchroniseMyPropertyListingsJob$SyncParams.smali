.class Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;
.super Ljava/lang/Object;
.source "RESSynchroniseMyPropertyListingsJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncParams"
.end annotation


# instance fields
.field protected mChannel:I

.field protected mContext:Landroid/content/Context;

.field protected mCurrentServerSyncTime:Ljava/util/Date;

.field protected mLastServerSyncEndTime:Ljava/util/Date;

.field protected mLastServerSyncTime:Ljava/util/Date;

.field protected mPassword:Ljava/lang/String;

.field protected mUiThreadHandler:Landroid/os/Handler;

.field protected mUsername:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$1;

    .prologue
    .line 580
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;-><init>()V

    return-void
.end method


# virtual methods
.method protected isAuthenticationProvided()Z
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUsername:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
