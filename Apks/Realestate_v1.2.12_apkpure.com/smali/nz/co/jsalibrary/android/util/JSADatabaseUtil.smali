.class public Lnz/co/jsalibrary/android/util/JSADatabaseUtil;
.super Ljava/lang/Object;
.source "JSADatabaseUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeCursorOnNewThread(Landroid/database/Cursor;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnz/co/jsalibrary/android/util/JSADatabaseUtil$2;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/util/JSADatabaseUtil$2;-><init>(Landroid/database/Cursor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 110
    return-void
.end method

.method public static closeDatabaseOnNewThread(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2
    .param p0, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 117
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnz/co/jsalibrary/android/util/JSADatabaseUtil$3;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/util/JSADatabaseUtil$3;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 125
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 126
    return-void
.end method

.method public static copyDatabaseFiles(Landroid/content/Context;Ljava/io/File;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "destinationFolder"    # Ljava/io/File;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {p0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v0, v6, v4

    .line 87
    .local v0, "databaseName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 88
    .local v3, "sourceFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "destinationFile":Ljava/io/File;
    invoke-static {v3, v1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 90
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "databaseName":Ljava/lang/String;
    .end local v1    # "destinationFile":Ljava/io/File;
    .end local v3    # "sourceFile":Ljava/io/File;
    :cond_0
    return-object v2
.end method

.method public static emailDatabase(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "temp"

    aput-object v3, v1, v2

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildFolderStructureNoException([Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 31
    .local v0, "tempFolder":Ljava/io/File;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lnz/co/jsalibrary/android/util/JSADatabaseUtil;->emailDatabase(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static emailDatabase(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 54
    :try_start_0
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/util/JSADatabaseUtil;->copyDatabaseFiles(Landroid/content/Context;Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 55
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v8, Lnz/co/jsalibrary/android/util/JSADatabaseUtil$1;

    invoke-direct {v8}, Lnz/co/jsalibrary/android/util/JSADatabaseUtil$1;-><init>()V

    invoke-static {v2, v8}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    .local v0, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v4, "sendIntent":Landroid/content/Intent;
    const-string v8, "*/*"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " database files"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "subject":Ljava/lang/String;
    const-string v8, "android.intent.extra.SUBJECT"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    if-eqz p2, :cond_0

    const-string v8, "android.intent.extra.EMAIL"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    :cond_0
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 68
    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    const-string v8, "send email"

    invoke-static {v4, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 70
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v2    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "sendIntent":Landroid/content/Intent;
    .end local v5    # "subject":Ljava/lang/String;
    :goto_0
    return v6

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "exception":Ljava/lang/Exception;
    const-string v8, "error emailing databases"

    new-array v6, v6, [Ljava/lang/Class;

    const-class v9, Lnz/co/jsalibrary/android/util/JSADatabaseUtil;

    aput-object v9, v6, v7

    invoke-static {v8, v1, v6}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    move v6, v7

    .line 76
    goto :goto_0
.end method

.method public static emailDatabase(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "temp"

    aput-object v3, v1, v2

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildFolderStructureNoException([Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 40
    .local v0, "tempFolder":Ljava/io/File;
    invoke-static {p0, v0, p1}, Lnz/co/jsalibrary/android/util/JSADatabaseUtil;->emailDatabase(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
