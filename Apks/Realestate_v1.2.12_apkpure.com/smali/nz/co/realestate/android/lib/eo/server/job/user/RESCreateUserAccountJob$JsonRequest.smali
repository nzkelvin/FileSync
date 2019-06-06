.class Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$JsonRequest;
.super Ljava/lang/Object;
.source "RESCreateUserAccountJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JsonRequest"
.end annotation


# instance fields
.field public email:Ljava/lang/String;

.field public first_name:Ljava/lang/String;

.field public last_name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public subscriptions:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$1;

    .prologue
    .line 143
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$JsonRequest;-><init>()V

    return-void
.end method
