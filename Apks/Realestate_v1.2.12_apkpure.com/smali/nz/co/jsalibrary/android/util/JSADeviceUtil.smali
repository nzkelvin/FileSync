.class public final Lnz/co/jsalibrary/android/util/JSADeviceUtil;
.super Ljava/lang/Object;
.source "JSADeviceUtil.java"


# static fields
.field private static final DEFAULT_SHARED_PREFERENCE_KEY_DEVICE:Ljava/lang/String; = "_uniqueDeviceId"

.field private static final DEFAULT_SHARED_PREFERENCE_KEY_INSTALL:Ljava/lang/String; = "_uniqueInstallId"

.field public static final DEFAULT_SYSTEMBAR_HEIGHT_LANDSCAPE:I = 0x30


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 70
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 71
    .local v1, "permission":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    .line 73
    .local v0, "isReadPhoneState":Z
    :goto_0
    const-string v3, "_uniqueDeviceId"

    invoke-static {p0, v2, v2, v0, v3}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->getDeviceId(Landroid/content/Context;ZZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 71
    .end local v0    # "isReadPhoneState":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDeviceId(Landroid/content/Context;ZZZLjava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useAndroidId"    # Z
    .param p2, "useSerial"    # Z
    .param p3, "useDeviceId"    # Z
    .param p4, "sharedPreferenceKey"    # Ljava/lang/String;

    .prologue
    .line 102
    if-nez p0, :cond_0

    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 103
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 105
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "android_id"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "androidId":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_3

    invoke-static {}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->getDeviceSerial()Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, "serial":Ljava/lang/String;
    :goto_1
    if-eqz p3, :cond_4

    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->getTelephonyDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "deviceId":Ljava/lang/String;
    :goto_2
    if-nez v2, :cond_7

    if-nez v10, :cond_7

    if-nez v3, :cond_7

    .line 110
    if-nez p4, :cond_5

    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "null ids with no shared preference key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 105
    .end local v2    # "androidId":Ljava/lang/String;
    .end local v3    # "deviceId":Ljava/lang/String;
    .end local v10    # "serial":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 106
    .restart local v2    # "androidId":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 107
    .restart local v10    # "serial":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 112
    .restart local v3    # "deviceId":Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 113
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-interface {v5, v0, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 114
    .local v11, "uuid":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 127
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v11    # "uuid":Ljava/lang/String;
    :goto_3
    return-object v11

    .line 115
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    .restart local v11    # "uuid":Ljava/lang/String;
    :cond_6
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 116
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .line 117
    move-object/from16 v0, p4

    invoke-interface {v4, v0, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 122
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v11    # "uuid":Ljava/lang/String;
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v12

    int-to-long v8, v12

    .line 123
    .local v8, "mostSigBits":J
    :goto_4
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    int-to-long v6, v12

    .line 124
    .local v6, "leastSigBits":J
    :goto_5
    const/16 v12, 0x20

    shl-long/2addr v6, v12

    .line 125
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    :goto_6
    int-to-long v12, v12

    or-long/2addr v6, v12

    .line 127
    new-instance v12, Ljava/util/UUID;

    invoke-direct {v12, v8, v9, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 122
    .end local v6    # "leastSigBits":J
    .end local v8    # "mostSigBits":J
    :cond_8
    const-wide/16 v8, 0x0

    goto :goto_4

    .line 123
    .restart local v8    # "mostSigBits":J
    :cond_9
    const-wide/16 v6, 0x0

    goto :goto_5

    .line 125
    .restart local v6    # "leastSigBits":J
    :cond_a
    const/4 v12, 0x0

    goto :goto_6
.end method

.method public static getDeviceInfoLog(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 313
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 314
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v2, "lines":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "Build.VERSION.RELEASE"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "Build.VERSION.CODENAME"

    sget-object v6, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "Build.VERSION.SDK_INT"

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "Build.DEVICE"

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "Build.MODEL"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "Build.PRODUCT"

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "Build.BRAND"

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "Build.DISPLAY"

    sget-object v6, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "Build.CPU_ABI"

    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_1

    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "Build.CPU_ABI2"

    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_2

    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "Build.HARDWARE"

    sget-object v6, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_2
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "Build.ID"

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "Build.MANUFACTURER"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_3

    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "Build.SERIAL"

    sget-object v6, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_3
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "Build.USER"

    sget-object v6, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "Build.HOST"

    sget-object v6, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "deviceId"

    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v3, "log":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    .line 345
    .local v1, "line":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_4

    .line 346
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 348
    :cond_4
    invoke-virtual {v1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "info":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%20s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 348
    .end local v0    # "info":Ljava/lang/String;
    :cond_5
    const-string v0, "null"

    goto :goto_1

    .line 353
    .end local v1    # "line":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getDeviceSerial()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 132
    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v3, "SERIAL"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .local v0, "exception":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 133
    .end local v0    # "exception":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .restart local v0    # "exception":Ljava/lang/Exception;
    move-object v1, v2

    .line 134
    goto :goto_0
.end method

.method public static getInstallId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-string v0, "_uniqueInstallId"

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->getInstallId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstallId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferenceKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-static {p0, v0, v0, v0, p1}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->getDeviceId(Landroid/content/Context;ZZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOrientation(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 281
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayDimensions(Landroid/content/Context;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    .line 282
    .local v0, "dimensions":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 283
    .local v2, "width":I
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 284
    .local v1, "height":I
    if-ne v2, v1, :cond_0

    const/4 v3, 0x3

    .line 286
    :goto_0
    return v3

    .line 285
    :cond_0
    if-le v2, v1, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    .line 286
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "/system/bin/getprop"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 415
    .local v0, "proc":Ljava/lang/Process;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 416
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .line 418
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private static getTelephonyDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 140
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasBackFacingCamera(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 377
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasCamera(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 367
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->hasBackFacingCamera(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->hasFrontFacingCamera(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasFrontFacingCamera(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 388
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->isGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.front"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFroyo()Z
    .locals 2

    .prologue
    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGingerbread()Z
    .locals 2

    .prologue
    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGingerbreadMr1()Z
    .locals 2

    .prologue
    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoneycomb()Z
    .locals 2

    .prologue
    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoneycombMr1()Z
    .locals 2

    .prologue
    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoneycombMr2()Z
    .locals 2

    .prologue
    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIceCreamSandwich()Z
    .locals 2

    .prologue
    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJellyBean()Z
    .locals 2

    .prologue
    .line 222
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJellyBeanMr2()Z
    .locals 2

    .prologue
    .line 227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKitKat()Z
    .locals 2

    .prologue
    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLarge(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLollipop()Z
    .locals 2

    .prologue
    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOrientationLandscape(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->getOrientation(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOrientationPortrait(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 263
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->getOrientation(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOrientationSquare(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->getOrientation(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXlarge(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writeDeviceInfoLogToFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->getDeviceInfoLog(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "log":Ljava/lang/String;
    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    .line 301
    return-void
.end method
