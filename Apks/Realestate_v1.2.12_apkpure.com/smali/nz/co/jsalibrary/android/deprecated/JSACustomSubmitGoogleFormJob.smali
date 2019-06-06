.class public abstract Lnz/co/jsalibrary/android/deprecated/JSACustomSubmitGoogleFormJob;
.super Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;
.source "JSACustomSubmitGoogleFormJob.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;-><init>()V

    return-void
.end method

.method public static varargs buildBundle(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "formKey"    # Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;->buildBundle(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSACustomSubmitGoogleFormJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 43
    const-string v5, "form_values"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v1, v5

    check-cast v1, [Ljava/lang/String;

    .line 44
    .local v1, "formValues":[Ljava/lang/String;
    if-nez v1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 45
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v2, "newValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v4, "unknown"

    .line 52
    .local v4, "version":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {}, Lnz/co/jsalibrary/android/deprecated/JSACustomSubmitGoogleFormJob;->getDeviceInfo()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 62
    .local v3, "phoneStatePermission":I
    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 63
    .local v0, "canReadPhoneState":Z
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_2
    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    const-string v5, "row_values"

    const-class v6, Ljava/lang/String;

    invoke-static {v2, v6}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 70
    invoke-super {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;

    move-result-object v5

    return-object v5

    .line 53
    .end local v0    # "canReadPhoneState":Z
    .end local v3    # "phoneStatePermission":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method
