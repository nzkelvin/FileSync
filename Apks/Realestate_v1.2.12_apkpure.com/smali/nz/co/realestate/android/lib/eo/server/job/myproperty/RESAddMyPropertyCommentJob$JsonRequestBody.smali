.class final Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$JsonRequestBody;
.super Ljava/lang/Object;
.source "RESAddMyPropertyCommentJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JsonRequestBody"
.end annotation


# instance fields
.field public channel:I

.field public comment:Ljava/lang/String;

.field public comment_category_id:I

.field public date:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$1;

    .prologue
    .line 127
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$JsonRequestBody;-><init>()V

    return-void
.end method
