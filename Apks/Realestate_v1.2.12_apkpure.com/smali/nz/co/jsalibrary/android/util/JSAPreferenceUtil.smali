.class public Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;
.super Ljava/lang/Object;
.source "JSAPreferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceThread;,
        Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceRunnable;,
        Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceThread;,
        Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildPreferencesString(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 9
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 98
    if-nez p0, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 99
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 100
    .local v3, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 104
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 106
    .local v5, "value":Ljava/lang/Object;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    if-eqz v5, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_1
    const-string v7, ":"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-static {v4, v8}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 114
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static emailPreferences(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;->emailPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static emailPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 53
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "sendIntent":Landroid/content/Intent;
    const-string v6, "text/plain"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " preferences"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "subject":Ljava/lang/String;
    const-string v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    if-eqz p2, :cond_0

    const-string v6, "android.intent.extra.EMAIL"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :cond_0
    const-string v6, "android.intent.extra.TEXT"

    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;->buildPreferencesString(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    const-string v6, "send email"

    invoke-static {v2, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 61
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "sendIntent":Landroid/content/Intent;
    .end local v3    # "subject":Ljava/lang/String;
    :goto_0
    return v4

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "exception":Ljava/lang/Exception;
    const-string v6, "error emailing databases"

    new-array v4, v4, [Ljava/lang/Class;

    const-class v7, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;

    aput-object v7, v4, v5

    invoke-static {v6, v0, v4}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    move v4, v5

    .line 67
    goto :goto_0
.end method

.method public static emailPreferences(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0, v0, p1}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;->emailPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static getPreferenceKeys(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;->getPreferenceKeys(Landroid/content/SharedPreferences;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferenceKeys(Landroid/content/SharedPreferences;)Ljava/util/Collection;
    .locals 1
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static writePreferences(Landroid/content/SharedPreferences;Ljava/util/Map;Z)V
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "preferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 126
    .local v2, "value":Ljava/lang/Object;
    if-nez p2, :cond_1

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    :cond_1
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 128
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, v2, Ljava/lang/Float;

    if-eqz v4, :cond_3

    check-cast v2, Ljava/lang/Float;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 129
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 130
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_5

    check-cast v2, Ljava/lang/Long;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 131
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 133
    .end local v1    # "key":Ljava/lang/String;
    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    return-void
.end method

.method public static writePreferencesToFile(Landroid/content/SharedPreferences;Ljava/io/File;)V
    .locals 1
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 89
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 90
    :cond_1
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;->buildPreferencesString(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static writePreferencesToFileNoException(Landroid/content/SharedPreferences;Ljava/io/File;)Z
    .locals 2
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "destination"    # Ljava/io/File;

    .prologue
    .line 77
    :try_start_0
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;->writePreferencesToFile(Landroid/content/SharedPreferences;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    const/4 v1, 0x1

    .line 80
    :goto_0
    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method
