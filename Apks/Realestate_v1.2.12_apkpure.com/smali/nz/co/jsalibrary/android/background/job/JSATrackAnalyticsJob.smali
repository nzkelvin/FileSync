.class public abstract Lnz/co/jsalibrary/android/background/job/JSATrackAnalyticsJob;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;
.source "JSATrackAnalyticsJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field protected static final ACTION:Ljava/lang/String; = "action"

.field protected static final ANALYTICS_ACTION:Ljava/lang/String; = "analytics_action"

.field protected static final ANALYTICS_ACTION_SET_CUSTOM_VAR:Ljava/lang/String; = "analytics_action_set_custom_var"

.field protected static final ANALYTICS_ACTION_TRACK_EVENT:Ljava/lang/String; = "analytics_action_track_event"

.field protected static final ANALYTICS_ACTION_TRACK_PAGE_VIEW:Ljava/lang/String; = "analytics_action_track_page_view"

.field protected static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CUSTOM_VAR_SCOPE_PAGE_LEVEL:I = 0x3

.field public static final CUSTOM_VAR_SCOPE_SESSION_LEVEL:I = 0x2

.field public static final CUSTOM_VAR_SCOPE_VISITOR_LEVEL:I = 0x1

.field protected static final INDEX:Ljava/lang/String; = "index"

.field protected static final LABEL:Ljava/lang/String; = "label"

.field public static final MAX_CUSTOM_VARS:I = 0x5

.field protected static final NAME:Ljava/lang/String; = "name"

.field protected static final PAGE:Ljava/lang/String; = "page"

.field protected static final SCOPE:Ljava/lang/String; = "scope"

.field protected static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;-><init>()V

    return-void
.end method

.method public static buildBundleSetCustomVar(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "index"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "analytics_action"

    const-string v2, "analytics_action_set_custom_var"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "index"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-object v0
.end method

.method public static buildBundleSetCustomVar(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "index"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "scope"    # I

    .prologue
    .line 75
    invoke-static {p0, p1, p2}, Lnz/co/jsalibrary/android/background/job/JSATrackAnalyticsJob;->buildBundleSetCustomVar(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "scope"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    return-object v0
.end method

.method public static buildBundleTrackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 3
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "analytics_action"

    const-string v2, "analytics_action_track_event"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "category"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "label"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    return-object v0
.end method

.method public static buildBundleTrackPageView(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "page"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "analytics_action"

    const-string v2, "analytics_action_track_page_view"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "page"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-object v0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    const-string v1, "analytics_action"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "analyticsAction":Ljava/lang/String;
    const-string v1, "analytics_action_track_page_view"

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "page"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/background/job/JSATrackAnalyticsJob;->trackPageView(Ljava/lang/String;)V

    .line 96
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    return-object v1

    .line 89
    :cond_0
    const-string v1, "analytics_action_track_event"

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const-string v1, "category"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "label"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lnz/co/jsalibrary/android/background/job/JSATrackAnalyticsJob;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 91
    :cond_1
    const-string v1, "analytics_action_set_custom_var"

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    const-string v1, "scope"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "index"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scope"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lnz/co/jsalibrary/android/background/job/JSATrackAnalyticsJob;->setCustomVar(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 93
    :cond_2
    const-string v1, "index"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lnz/co/jsalibrary/android/background/job/JSATrackAnalyticsJob;->setCustomVar(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/background/job/JSATrackAnalyticsJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected abstract setCustomVar(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract setCustomVar(ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method protected abstract trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method protected abstract trackPageView(Ljava/lang/String;)V
.end method
