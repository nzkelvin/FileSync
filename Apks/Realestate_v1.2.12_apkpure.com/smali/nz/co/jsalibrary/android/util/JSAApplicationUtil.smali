.class public Lnz/co/jsalibrary/android/util/JSAApplicationUtil;
.super Ljava/lang/Object;
.source "JSAApplicationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createApplicationInfoBundle(Landroid/content/Context;)Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 179
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, ".temp"

    aput-object v3, v2, v5

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildFolderStructureNoException([Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 180
    .local v1, "folder":Ljava/io/File;
    const-string v2, "appbundle"

    const/4 v3, 0x3

    const-string v4, "zip"

    invoke-static {v1, v2, v3, v4, v5}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getNextNonExistentFileInSequence(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 181
    .local v0, "destination":Ljava/io/File;
    invoke-static {p0, v1, v0}, Lnz/co/jsalibrary/android/util/JSAApplicationUtil;->createApplicationInfoBundle(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    return-object v2
.end method

.method public static createApplicationInfoBundle(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/util/JSAApplicationUtil;->createApplicationInfoBundleFiles(Landroid/content/Context;Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 210
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    move-object p2, v2

    .line 218
    .end local p2    # "destination":Ljava/io/File;
    :goto_0
    return-object p2

    .line 214
    .restart local p2    # "destination":Ljava/io/File;
    :cond_0
    :try_start_0
    invoke-static {v1, p2}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->zipFiles(Ljava/util/Collection;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "error compressing application info bundle"

    invoke-static {v3, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object p2, v2

    .line 218
    goto :goto_0
.end method

.method public static createApplicationInfoBundleFiles(Landroid/content/Context;Ljava/io/File;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "device_info.txt"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    .local v1, "file":Ljava/io/File;
    invoke-static {p0, v1}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->writeDeviceInfoLogToFile(Landroid/content/Context;Ljava/io/File;)V

    .line 248
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v3, "shared_preferences.txt"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    .restart local v1    # "file":Ljava/io/File;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3, v1}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;->writePreferencesToFile(Landroid/content/SharedPreferences;Ljava/io/File;)V

    .line 257
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    .end local v1    # "file":Ljava/io/File;
    :goto_1
    :try_start_2
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/util/JSADatabaseUtil;->copyDatabaseFiles(Landroid/content/Context;Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 271
    :goto_2
    :try_start_3
    new-instance v1, Ljava/io/File;

    const-string v3, "logcat.txt"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 272
    .restart local v1    # "file":Ljava/io/File;
    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->writeLogToFile(Ljava/io/File;)V

    .line 273
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 278
    .end local v1    # "file":Ljava/io/File;
    :goto_3
    return-object v2

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "error writing device info file"

    invoke-static {v3, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 258
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "error writing shared preferences file"

    invoke-static {v3, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 265
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 266
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "error copying database files"

    invoke-static {v3, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 274
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 275
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "error writing log files"

    invoke-static {v3, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static emailApplicationInfoBundle(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 141
    :try_start_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAApplicationUtil;->createApplicationInfoBundle(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 142
    .local v2, "file":Ljava/io/File;
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 145
    .local v0, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v4, "sendIntent":Landroid/content/Intent;
    const-string v8, "*/*"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " application info bundle"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, "subject":Ljava/lang/String;
    const-string v8, "android.intent.extra.SUBJECT"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 150
    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    const-string v8, "send email"

    invoke-static {v4, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 152
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v0    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "sendIntent":Landroid/content/Intent;
    .end local v5    # "subject":Ljava/lang/String;
    :goto_0
    return v6

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "exception":Ljava/lang/Exception;
    const-string v8, "error emailing application info bundle"

    new-array v6, v6, [Ljava/lang/Class;

    const-class v9, Lnz/co/jsalibrary/android/util/JSAApplicationUtil;

    aput-object v9, v6, v7

    invoke-static {v8, v1, v6}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    move v6, v7

    .line 158
    goto :goto_0
.end method

.method public static getAppPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    .local v0, "appContext":Landroid/content/Context;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 95
    :goto_1
    return-object v2

    .end local v0    # "appContext":Landroid/content/Context;
    :cond_0
    move-object v0, p0

    .line 91
    goto :goto_0

    .line 94
    .restart local v0    # "appContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getAppVersionCode(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAApplicationUtil;->getAppPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 107
    .local v0, "appPackageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAApplicationUtil;->getAppPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 118
    .local v0, "appPackageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getApplicationDatabaseHelpers(Landroid/app/Application;)Ljava/util/List;
    .locals 8
    .param p0, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/database/sqlite/SQLiteOpenHelper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 68
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v3, "helpers":Ljava/util/List;, "Ljava/util/List<Landroid/database/sqlite/SQLiteOpenHelper;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 70
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v1, v4

    .line 71
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    const-class v6, Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 70
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    :cond_2
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteOpenHelper;

    .line 76
    .local v2, "helper":Landroid/database/sqlite/SQLiteOpenHelper;
    if-eqz v2, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 77
    .end local v2    # "helper":Landroid/database/sqlite/SQLiteOpenHelper;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 81
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_3
    return-object v3
.end method

.method public static isDebugBuild(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    :try_start_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAApplicationUtil;->isDebugBuildWithException(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 41
    :goto_0
    return v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "exception":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDebugBuildWithException(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 52
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 53
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
