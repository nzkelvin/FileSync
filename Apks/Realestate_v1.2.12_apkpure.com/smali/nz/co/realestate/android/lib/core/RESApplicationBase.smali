.class public abstract Lnz/co/realestate/android/lib/core/RESApplicationBase;
.super Lnz/co/jsalibrary/android/app/JSAApplication;
.source "RESApplicationBase.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/app/JSAApplication;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG_CREATE_ACTIVITY_RELOAD_MODEL:Z

.field public static final DEBUG_INITIALISE_DATABASE:Z

.field public static final DEBUG_PROXY:Z

.field protected static sAnalyticsTracker:Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

.field protected static sDbHelper:Lnz/co/realestate/android/lib/core/RESDbHelperBase;

.field protected static sImageLoader:Lnz/co/realestate/android/lib/core/RESImageLoader;

.field protected static sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

.field protected static sObjectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

.field protected static sUiThreadHandler:Landroid/os/Handler;

.field protected static sUiThreadId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;-><init>()V

    .line 50
    sput-object p0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    .line 51
    return-void
.end method

.method public static getAdImagesFolder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationStorageFolder()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "images"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ad"

    aput-object v2, v0, v1

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildFolderStructure([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAgentImagesFolder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 282
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationStorageFolder()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "images"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "agent"

    aput-object v2, v0, v1

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildFolderStructure([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAgentLogoFolder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 278
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationStorageFolder()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "images"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "logo"

    aput-object v2, v0, v1

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildFolderStructure([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;
    .locals 3

    .prologue
    .line 163
    sget-object v2, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sAnalyticsTracker:Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    if-eqz v2, :cond_0

    sget-object v2, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sAnalyticsTracker:Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    .line 167
    .local v0, "ga":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .local v1, "tracker":Lcom/google/android/gms/analytics/Tracker;
    :goto_0
    return-object v2

    .line 164
    .end local v0    # "ga":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .end local v1    # "tracker":Lcom/google/android/gms/analytics/Tracker;
    :cond_0
    sget-object v2, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    invoke-static {v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 165
    .restart local v0    # "ga":Lcom/google/android/gms/analytics/GoogleAnalytics;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getGoogleAnalyticsTrackingCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 166
    .restart local v1    # "tracker":Lcom/google/android/gms/analytics/Tracker;
    new-instance v2, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$LoggedGoogleAnalyticsTracker;

    invoke-direct {v2, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$LoggedGoogleAnalyticsTracker;-><init>(Lcom/google/android/gms/analytics/Tracker;)V

    sput-object v2, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sAnalyticsTracker:Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    .line 167
    sget-object v2, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sAnalyticsTracker:Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    goto :goto_0
.end method

.method public static getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    if-eqz v0, :cond_0

    sget-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getModel()Lnz/co/jsalibrary/android/model/JSAModel;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContactImagesFolder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationStorageFolder()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "images"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "contact"

    aput-object v2, v0, v1

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildFolderStructure([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    return-object v0
.end method

.method public static declared-synchronized getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;
    .locals 3

    .prologue
    .line 127
    const-class v1, Lnz/co/realestate/android/lib/core/RESApplicationBase;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sDbHelper:Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    if-nez v0, :cond_0

    sget-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    sget-object v2, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    invoke-direct {v0, v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sDbHelper:Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    .line 128
    :cond_0
    sget-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sDbHelper:Lnz/co/realestate/android/lib/core/RESDbHelperBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;
    .locals 3

    .prologue
    .line 144
    const-class v1, Lnz/co/realestate/android/lib/core/RESApplicationBase;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sImageLoader:Lnz/co/realestate/android/lib/core/RESImageLoader;

    if-nez v0, :cond_0

    new-instance v0, Lnz/co/realestate/android/lib/core/RESImageLoader;

    sget-object v2, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    invoke-direct {v0, v2}, Lnz/co/realestate/android/lib/core/RESImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sImageLoader:Lnz/co/realestate/android/lib/core/RESImageLoader;

    .line 145
    :cond_0
    sget-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sImageLoader:Lnz/co/realestate/android/lib/core/RESImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInspectionImagesFolder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 290
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationStorageFolder()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "images"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "inspection"

    aput-object v2, v0, v1

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildFolderStructure([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lnz/co/realestate/android/lib/core/RESApplicationBase;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    return-object v0
.end method

.method public static getMapApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0y7m4ARDQ6ev5lAHZYsDB46urV0JSPGCdwZXxDg"

    .line 119
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0PsTisvMyNiK6CvUPLmLStsnodcNwBI8YBrFALA"

    goto :goto_0
.end method

.method public static declared-synchronized getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 4

    .prologue
    .line 153
    const-class v1, Lnz/co/realestate/android/lib/core/RESApplicationBase;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sObjectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    if-nez v0, :cond_0

    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sObjectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 154
    :cond_0
    sget-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sObjectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v2, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 155
    sget-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sObjectMapper:Lorg/codehaus/jackson/map/ObjectMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPropertyImagesFolder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 286
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationStorageFolder()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "images"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "property"

    aput-object v2, v0, v1

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildFolderStructure([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDebugging()Z
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    if-eqz v0, :cond_0

    sget-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sInstance:Lnz/co/realestate/android/lib/core/RESApplicationBase;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebug()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDebuggingInitialiseDatabase()Z
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 175
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget-wide v2, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sUiThreadId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract getApplicationStorageFolder()Ljava/lang/String;
.end method

.method protected getDebugProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "192.168.0.6"

    return-object v0
.end method

.method protected getDebugProxyHostPort()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x22b8

    return v0
.end method

.method protected initialiseApplication()V
    .locals 6

    .prologue
    const/16 v5, 0x78

    const/high16 v4, 0x42a00000    # 80.0f

    const/4 v3, 0x0

    .line 193
    invoke-super {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->initialiseApplication()V

    .line 197
    invoke-static {v4, p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getPixelsForDips(FLandroid/content/Context;)I

    move-result v2

    sput v2, Lnz/co/realestate/android/lib/core/RESConstantsBase;->THUMBNAIL_IMAGE_WIDTH:I

    .line 198
    invoke-static {v4, p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getPixelsForDips(FLandroid/content/Context;)I

    move-result v2

    sput v2, Lnz/co/realestate/android/lib/core/RESConstantsBase;->THUMBNAIL_IMAGE_HEIGHT:I

    .line 201
    sget v2, Lnz/co/realestate/android/lib/core/RESConstantsBase;->THUMBNAIL_IMAGE_WIDTH:I

    if-nez v2, :cond_0

    sput v5, Lnz/co/realestate/android/lib/core/RESConstantsBase;->THUMBNAIL_IMAGE_WIDTH:I

    .line 202
    :cond_0
    sget v2, Lnz/co/realestate/android/lib/core/RESConstantsBase;->THUMBNAIL_IMAGE_HEIGHT:I

    if-nez v2, :cond_1

    sput v5, Lnz/co/realestate/android/lib/core/RESConstantsBase;->THUMBNAIL_IMAGE_HEIGHT:I

    .line 205
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebuggingInitialiseDatabase()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "shared.preferences"

    invoke-static {p0, v2, v3}, Lnz/co/realestate/android/lib/util/RESPreferenceUtil;->writePreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 208
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateOpenHomesIntentService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 212
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lnz/co/realestate/android/lib/eo/location/util/RESLocationUtil$UpdateUserLocationIntentService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 216
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendRegionsRequestIntentService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 220
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendDistrictsRequestIntentService;->startService(Landroid/content/Context;Z)V

    .line 223
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendSuburbsRequestIntentService;->startService(Landroid/content/Context;Z)V

    .line 226
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendListingTypesRequestIntentService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 230
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendPricingMethodsRequestIntentService;->startService(Landroid/content/Context;Z)V

    .line 233
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendWestpacRequestIntentService;->startServiceLocations(Landroid/content/Context;)V

    .line 236
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$ExpireMyPropertyListingsIntentService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 240
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$ExpireOpenHomesListingsIntentService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 244
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$ExpireRecentListingsIntentService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 248
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendWestpacRequestIntentService;->startServiceRates(Landroid/content/Context;)V

    .line 251
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->isUserLoggedIn()Z

    move-result v1

    .line 252
    .local v1, "isUserLoggedIn":Z
    if-eqz v1, :cond_4

    invoke-static {p0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyListingsIntentService;->startServiceLoggedIn(Landroid/content/Context;)Z

    .line 256
    :goto_0
    invoke-static {p0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyOpenHomesIntentService;->startServiceLoggedIn(Landroid/content/Context;)Z

    .line 257
    return-void

    .line 253
    :cond_4
    invoke-static {p0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyListingsIntentService;->startServiceMigrateLegacyListingsOnly(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public isDebugProxy()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method protected isForceActionBarOverflow()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->onCreate()V

    .line 60
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sUiThreadId:J

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESApplicationBase;->sUiThreadHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method protected onDebugRegisterActivityCreationReloadModel(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 1
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 184
    const-string v0, "currentListingTypeId"

    invoke-virtual {p1, v0}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->clearCurrentMapListings()V

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->onTerminate()V

    .line 66
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->close()V

    .line 67
    return-void
.end method
