.class public final Lnz/co/realestate/android/core/RESApplication;
.super Lnz/co/realestate/android/lib/core/RESApplicationBase;
.source "RESApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;-><init>()V

    return-void
.end method

.method public static getApplicationModel()Lnz/co/realestate/android/model/RESApplicationModel;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lnz/co/realestate/android/core/RESApplication;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/model/RESApplicationModel;

    return-object v0
.end method


# virtual methods
.method protected constructModel()Lnz/co/jsalibrary/android/model/JSAModel;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lnz/co/realestate/android/model/RESApplicationModel;

    invoke-direct {v0, p0}, Lnz/co/realestate/android/model/RESApplicationModel;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, "model":Lnz/co/realestate/android/model/RESApplicationModel;
    invoke-virtual {v0, p0}, Lnz/co/realestate/android/model/RESApplicationModel;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 35
    return-object v0
.end method

.method protected getApplicationStorageFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, ".realestate"

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->onCreate()V

    .line 25
    invoke-virtual {p0}, Lnz/co/realestate/android/core/RESApplication;->isDebug()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AA5fc98e48ac7e1276900839613cbc45d4cf215c87"

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/NewRelic;->start(Landroid/content/Context;)V

    .line 26
    :cond_0
    return-void
.end method
