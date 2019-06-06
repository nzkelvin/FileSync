.class public Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;
.source "RESUpdateOpenHomesJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob",
        "<",
        "Ljava/util/List",
        "<",
        "Lnz/co/jsalibrary/android/tuple/JSATuple",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final DELETION_CUTOFF:J = 0x134fd9000L

.field private static final DISPLAY_CUTOFF:J = 0x48190800L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;-><init>()V

    return-void
.end method

.method private createAdapterItems(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "tuples":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    :cond_0
    return-object v2

    .line 98
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;>;"
    const/4 v0, 0x0

    .line 101
    .local v0, "currentHeader":Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/jsalibrary/android/tuple/JSATuple;

    .line 102
    .local v3, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;"
    invoke-virtual {v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->getStartTime()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lnz/co/realestate/android/lib/util/RESListingUtil;->getCalendarDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    .line 104
    .local v1, "date":Ljava/util/Date;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 105
    :cond_2
    new-instance v0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;

    .end local v0    # "currentHeader":Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v4, v1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;-><init>(Ljava/util/List;Ljava/util/Date;)V

    .line 106
    .restart local v0    # "currentHeader":Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_3
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;->getOpenHomes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v4, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;

    invoke-direct {v4, v3}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;-><init>(Lnz/co/jsalibrary/android/tuple/JSATuple;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
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
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/os/Handler;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v15

    invoke-virtual {v15}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 45
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v15

    invoke-virtual {v15}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbOpenHome()Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;

    move-result-object v3

    .line 46
    .local v3, "database":Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v12

    .line 49
    .local v12, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 50
    .local v13, "now":Ljava/util/Date;
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    const-wide/32 v18, 0x48190800

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 51
    .local v6, "displayCutoff":Ljava/util/Date;
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    const-wide v18, 0x134fd9000L

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 54
    .local v5, "deletionCutoff":Ljava/util/Date;
    const/4 v15, 0x1

    invoke-virtual {v3, v4, v15}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->getAllItemsCursor(Landroid/database/sqlite/SQLiteDatabase;Z)Landroid/database/Cursor;

    move-result-object v2

    .line 55
    .local v2, "cursor":Landroid/database/Cursor;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v10, "homesToDisplay":Ljava/util/Map;, "Ljava/util/Map<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v9, "homesToDelete":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v15

    if-nez v15, :cond_3

    .line 58
    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v4, v15, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;

    move-result-object v7

    .line 59
    .local v7, "home":Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->getStartTime()Ljava/util/Date;

    move-result-object v15

    if-nez v15, :cond_1

    .line 57
    :cond_0
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v7}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->getStartTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v4, v15, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->loadListingFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v15

    invoke-interface {v10, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v7}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->getStartTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    .end local v7    # "home":Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    :cond_3
    new-instance v15, Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob$1;-><init>(Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob;)V

    invoke-static {v9, v15}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v11

    .line 67
    .local v11, "idsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3, v11, v4}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->deleteRows(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)I

    .line 70
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v15

    if-nez v15, :cond_4

    .line 71
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v15}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCachedOpenHomes(Ljava/util/List;)V

    .line 72
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v15}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCachedOpenHomeAdapterItems(Ljava/util/List;)V

    .line 73
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 89
    :goto_2
    return-object v14

    .line 77
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-direct {v8, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .local v8, "homes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;>;"
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 81
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v14, "result":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .restart local v7    # "home":Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    new-instance v16, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 83
    .end local v7    # "home":Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    :cond_5
    invoke-virtual {v12, v14}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCachedOpenHomes(Ljava/util/List;)V

    .line 86
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob;->createAdapterItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v12, v15}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCachedOpenHomeAdapterItems(Ljava/util/List;)V

    goto :goto_2
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Exception;",
            "Landroid/os/Handler;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_updating_open_homes:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method
