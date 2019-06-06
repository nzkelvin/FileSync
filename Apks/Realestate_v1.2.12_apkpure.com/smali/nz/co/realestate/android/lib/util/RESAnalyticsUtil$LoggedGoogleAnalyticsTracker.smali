.class public Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$LoggedGoogleAnalyticsTracker;
.super Ljava/lang/Object;
.source "RESAnalyticsUtil.java"

# interfaces
.implements Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/util/RESAnalyticsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoggedGoogleAnalyticsTracker"
.end annotation


# instance fields
.field private mTracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/Tracker;)V
    .locals 0
    .param p1, "tracker"    # Lcom/google/android/gms/analytics/Tracker;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$LoggedGoogleAnalyticsTracker;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 37
    return-void
.end method


# virtual methods
.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ":"

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$LoggedGoogleAnalyticsTracker;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$LoggedGoogleAnalyticsTracker;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 42
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 43
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 44
    invoke-virtual {v1, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 45
    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 47
    return-void
.end method

.method public trackPageView(Ljava/lang/String;)V
    .locals 3
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$LoggedGoogleAnalyticsTracker;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$LoggedGoogleAnalyticsTracker;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$LoggedGoogleAnalyticsTracker;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 53
    return-void
.end method
