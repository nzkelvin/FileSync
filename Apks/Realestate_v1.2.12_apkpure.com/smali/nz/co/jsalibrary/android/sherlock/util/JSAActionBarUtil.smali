.class public Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;
.super Ljava/lang/Object;
.source "JSAActionBarUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTab(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p0, "actionBar"    # Ljava/lang/Object;
    .param p1, "tab"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "addTab"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-string v6, "android.app.ActionBar$Tab"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 103
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "tab could not be added"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;

    aput-object v4, v3, v7

    invoke-static {v2, v0, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static constructProxiedActionBarTabListener(Ljava/lang/Class;Lnz/co/jsalibrary/android/sherlock/util/JSATabManagerUtil$ActionBarTabListener;Landroid/support/v4/app/FragmentActivity;)Ljava/lang/Object;
    .locals 7
    .param p1, "listener"    # Lnz/co/jsalibrary/android/sherlock/util/JSATabManagerUtil$ActionBarTabListener;
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lnz/co/jsalibrary/android/sherlock/util/JSATabManagerUtil$ActionBarTabListener;",
            "Landroid/support/v4/app/FragmentActivity;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/sherlock/util/JSATabManagerUtil$ActionBarTabListener;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/support/v4/app/FragmentActivity;

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 156
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 159
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v2

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "exception":Ljava/lang/Exception;
    const-string v2, "proxied action bar tab listener could not be constructed"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 159
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getActionBar(Landroid/app/Activity;)Ljava/lang/Object;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getActionBar"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 45
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 48
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "action bar could not be retrieved"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;

    aput-object v5, v4, v6

    invoke-static {v2, v0, v4}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    move-object v2, v3

    .line 48
    goto :goto_0
.end method

.method public static getActionBarHeight(Landroid/app/Activity;)I
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 168
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->isHoneycomb()Z

    move-result v5

    if-eqz v5, :cond_0

    const v1, 0x10102eb

    .line 170
    .local v1, "actionbarSizeResId":I
    :goto_0
    invoke-static {p0, v1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->resolveThemeAttribute(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v5

    iget v4, v5, Landroid/util/TypedValue;->resourceId:I

    .line 171
    .local v4, "resourceId":I
    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    float-to-int v5, v5

    .line 181
    :goto_1
    return v5

    .line 168
    .end local v1    # "actionbarSizeResId":I
    .end local v4    # "resourceId":I
    :cond_0
    sget v1, Lnz/co/jsalibrary/android/sherlock/R$attr;->actionBarSize:I

    goto :goto_0

    .line 172
    .restart local v1    # "actionbarSizeResId":I
    .restart local v4    # "resourceId":I
    :catch_0
    move-exception v2

    .local v2, "exception":Landroid/content/res/Resources$NotFoundException;
    const-string v5, "action bar height cannot be retrieved from theme"

    new-array v7, v9, [Ljava/lang/Class;

    const-class v8, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;

    aput-object v8, v7, v6

    invoke-static {v5, v2, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 173
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    invoke-static {p0}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, "actionBar":Ljava/lang/Object;
    if-nez v0, :cond_2

    invoke-static {p0}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->getSupportActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    :cond_2
    if-nez v0, :cond_3

    move v5, v6

    goto :goto_1

    .line 177
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "getHeight"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 178
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    goto :goto_1

    .line 179
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 180
    .local v2, "exception":Ljava/lang/Exception;
    const-string v5, "action bar height cannot be retrieved"

    new-array v7, v9, [Ljava/lang/Class;

    const-class v8, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;

    aput-object v8, v7, v6

    invoke-static {v5, v2, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    move v5, v6

    .line 181
    goto :goto_1
.end method

.method public static getSupportActionBar(Landroid/app/Activity;)Ljava/lang/Object;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getSupportActionBar"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 59
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 62
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "support action bar could not be retrieved"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;

    aput-object v5, v4, v6

    invoke-static {v2, v0, v4}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    move-object v2, v3

    .line 62
    goto :goto_0
.end method

.method public static getTabTag(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "tab"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getTag"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 116
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 119
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "tab tag could not be retrieved"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;

    aput-object v5, v4, v6

    invoke-static {v2, v0, v4}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    move-object v2, v3

    .line 119
    goto :goto_0
.end method

.method public static hasActionBar(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getActionBar"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 32
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 34
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    move v2, v3

    .line 32
    goto :goto_0

    .line 33
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .local v0, "exception":Ljava/lang/Exception;
    move v2, v3

    .line 34
    goto :goto_0
.end method

.method public static newTab(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 85
    :try_start_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "actionBar":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "newTab"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 87
    .local v2, "tab":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "setTag"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Object;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "setText"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/CharSequence;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0    # "actionBar":Ljava/lang/Object;
    .end local v2    # "tab":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "exception":Ljava/lang/Exception;
    const-string v3, "new tab could not be created"

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;

    aput-object v6, v5, v9

    invoke-static {v3, v1, v5}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    move-object v2, v4

    .line 92
    goto :goto_0
.end method

.method public static setNavigationMode(Ljava/lang/Object;I)V
    .locals 9
    .param p0, "actionBar"    # Ljava/lang/Object;
    .param p1, "mode"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setNavigationMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 73
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "navigation mode could not be set"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;

    aput-object v4, v3, v7

    invoke-static {v2, v0, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static setSelectedNavigationItem(Ljava/lang/Object;I)V
    .locals 9
    .param p0, "actionBar"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setSelectedNavigationItem"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 143
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "navigation item could not be selected"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;

    aput-object v4, v3, v7

    invoke-static {v2, v0, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static setTabListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p0, "tab"    # Ljava/lang/Object;
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setTabListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-string v6, "android.app.ActionBar$TabListener"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 130
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "tab listener could not be set"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;

    aput-object v4, v3, v7

    invoke-static {v2, v0, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_0
.end method
