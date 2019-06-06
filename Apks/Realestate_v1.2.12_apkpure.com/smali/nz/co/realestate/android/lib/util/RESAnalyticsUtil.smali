.class public Lnz/co/realestate/android/lib/util/RESAnalyticsUtil;
.super Ljava/lang/Object;
.source "RESAnalyticsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$LoggedGoogleAnalyticsTracker;,
        Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs buildPageViewUrl([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "strings"    # [Ljava/lang/Object;

    .prologue
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-static {p0, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "url":Ljava/lang/String;
    const-string v1, "//"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 20
    return-object v0
.end method
