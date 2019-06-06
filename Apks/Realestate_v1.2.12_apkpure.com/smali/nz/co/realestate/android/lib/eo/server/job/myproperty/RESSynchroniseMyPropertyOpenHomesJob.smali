.class public final Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESSynchroniseMyPropertyOpenHomesJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-object v0
.end method

.method private synchroniseListings(Ljava/util/Collection;Ljava/util/Collection;Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;)Z
    .locals 14
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;",
            ">;",
            "Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "localHomes":Ljava/util/Collection;, "Ljava/util/Collection<Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;>;"
    .local p2, "remoteHomes":Ljava/util/Collection;, "Ljava/util/Collection<Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;>;"
    move-object/from16 v0, p2

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->union(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v4

    .line 154
    .local v4, "homes":Ljava/util/Collection;, "Ljava/util/Collection<Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v10

    invoke-virtual {v10}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 155
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x1

    .line 157
    .local v9, "success":Z
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;

    .line 160
    .local v3, "home":Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;
    new-instance v10, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$1;

    invoke-direct {v10, p0, v3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$1;-><init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob;Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;)V

    invoke-static {p1, v10}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->find(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;

    .line 162
    .local v5, "localHome":Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;
    new-instance v10, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$2;

    invoke-direct {v10, p0, v3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$2;-><init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob;Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;)V

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->find(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;

    .line 166
    .local v7, "remoteHome":Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;
    if-eqz v5, :cond_1

    if-nez v7, :cond_0

    .line 169
    :cond_1
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->getUpdateTime()Ljava/util/Date;

    move-result-object v10

    if-nez v10, :cond_5

    .line 172
    invoke-virtual/range {p3 .. p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->isAuthenticationProvided()Z

    move-result v10

    if-eqz v10, :cond_3

    iget v10, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->id:I

    move-object/from16 v0, p3

    iget-object v12, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v13, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mPassword:Ljava/lang/String;

    .line 173
    invoke-static {v10, v12, v13}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyOpenHomeJob;->buildBundle(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 175
    .local v1, "bundle":Landroid/os/Bundle;
    :goto_1
    new-instance v10, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyOpenHomeJob;

    invoke-direct {v10}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyOpenHomeJob;-><init>()V

    move-object/from16 v0, p3

    iget-object v12, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v13, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mUiThreadHandler:Landroid/os/Handler;

    invoke-static {v10, v12, v1, v13}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 177
    .local v8, "result":Z
    move-object/from16 v0, p3

    iget-object v10, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mCurrentServerSyncTime:Ljava/util/Date;

    invoke-virtual {v3, v10}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->setUpdateTime(Ljava/util/Date;)V

    .line 178
    new-instance v6, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;

    iget-object v10, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->listing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget v10, v10, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-direct {v6, v10}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;-><init>(I)V

    .line 179
    .local v6, "p":Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;
    if-eqz v8, :cond_2

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v10

    invoke-virtual {v10}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbOpenHome()Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;

    move-result-object v10

    invoke-virtual {v10, v3, v2, v6}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->insertOrUpdateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v8

    .line 181
    :cond_2
    if-eqz v9, :cond_4

    if-eqz v8, :cond_4

    const/4 v9, 0x1

    .line 182
    :goto_2
    goto :goto_0

    .line 173
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v6    # "p":Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;
    .end local v8    # "result":Z
    :cond_3
    iget v10, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->id:I

    .line 174
    invoke-static {v10}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyOpenHomeJob;->buildBundle(I)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 181
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v6    # "p":Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;
    .restart local v8    # "result":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 185
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v6    # "p":Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;
    .end local v8    # "result":Z
    :cond_5
    if-eqz v5, :cond_8

    .line 188
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v10

    invoke-virtual {v10}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbOpenHome()Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;

    move-result-object v10

    invoke-virtual {v10, v3, v2}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->deleteItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v10

    if-eqz v10, :cond_6

    const/4 v8, 0x1

    .line 189
    .restart local v8    # "result":Z
    :goto_3
    if-eqz v9, :cond_7

    if-eqz v8, :cond_7

    const/4 v9, 0x1

    .line 190
    :goto_4
    goto/16 :goto_0

    .line 188
    .end local v8    # "result":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 189
    .restart local v8    # "result":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    .line 193
    .end local v8    # "result":Z
    :cond_8
    invoke-virtual {v7}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->getUpdateTime()Ljava/util/Date;

    move-result-object v10

    move-object/from16 v0, p3

    iget-object v12, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mLastServerSyncEndTime:Ljava/util/Date;

    invoke-virtual {v10, v12}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 196
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v10

    invoke-virtual {v10}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingDetail()Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

    move-result-object v10

    iget-object v12, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->listing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v10, v12, v2}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->insertOrUpdateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v8

    .line 198
    .restart local v8    # "result":Z
    new-instance v6, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;

    iget-object v10, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->listing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget v10, v10, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-direct {v6, v10}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;-><init>(I)V

    .line 199
    .restart local v6    # "p":Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;
    if-eqz v8, :cond_9

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v10

    invoke-virtual {v10}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbOpenHome()Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;

    move-result-object v10

    invoke-virtual {v10, v3, v2, v6}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->insertOrUpdateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v8

    .line 201
    :cond_9
    if-eqz v9, :cond_a

    if-eqz v8, :cond_a

    const/4 v9, 0x1

    .line 202
    :goto_5
    goto/16 :goto_0

    .line 201
    :cond_a
    const/4 v9, 0x0

    goto :goto_5

    .line 208
    .end local v6    # "p":Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;
    .end local v8    # "result":Z
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->isAuthenticationProvided()Z

    move-result v10

    if-eqz v10, :cond_c

    iget v10, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->id:I

    move-object/from16 v0, p3

    iget-object v12, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v13, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mPassword:Ljava/lang/String;

    .line 209
    invoke-static {v10, v12, v13}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomeJob;->buildBundle(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 211
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :goto_6
    new-instance v10, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomeJob;

    invoke-direct {v10}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomeJob;-><init>()V

    move-object/from16 v0, p3

    iget-object v12, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v13, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mUiThreadHandler:Landroid/os/Handler;

    invoke-static {v10, v12, v1, v13}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 212
    .restart local v8    # "result":Z
    if-eqz v9, :cond_d

    if-eqz v8, :cond_d

    const/4 v9, 0x1

    :goto_7
    goto/16 :goto_0

    .line 209
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v8    # "result":Z
    :cond_c
    iget v10, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->id:I

    .line 210
    invoke-static {v10}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomeJob;->buildBundle(I)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_6

    .line 212
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "result":Z
    :cond_d
    const/4 v9, 0x0

    goto :goto_7

    .line 217
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "home":Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;
    .end local v5    # "localHome":Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;
    .end local v7    # "remoteHome":Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;
    .end local v8    # "result":Z
    :cond_e
    new-instance v10, Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob;

    invoke-direct {v10}, Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob;-><init>()V

    move-object/from16 v0, p3

    iget-object v11, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    move-object/from16 v0, p3

    iget-object v13, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mUiThreadHandler:Landroid/os/Handler;

    invoke-static {v10, v11, v12, v13}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    .line 219
    return v9
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    const-string v12, "my_property_open_homes"

    .line 69
    .local v12, "section":Ljava/lang/String;
    new-instance v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;

    const/4 v14, 0x0

    invoke-direct {v11, v14}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;-><init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$1;)V

    .line 70
    .local v11, "params":Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;
    if-eqz p2, :cond_2

    const-string v14, "username"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_0
    iput-object v14, v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mUsername:Ljava/lang/String;

    .line 71
    if-eqz p2, :cond_3

    const-string v14, "password"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_1
    iput-object v14, v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mPassword:Ljava/lang/String;

    .line 72
    move-object/from16 v0, p3

    iput-object v0, v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mUiThreadHandler:Landroid/os/Handler;

    .line 73
    move-object/from16 v0, p1

    iput-object v0, v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v14

    invoke-virtual {v14, v12}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLastServerSyncTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    iput-object v14, v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mLastServerSyncTime:Ljava/util/Date;

    .line 79
    iget-object v14, v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mLastServerSyncTime:Ljava/util/Date;

    if-nez v14, :cond_0

    new-instance v14, Ljava/util/Date;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v14, v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mLastServerSyncTime:Ljava/util/Date;

    .line 84
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v14

    invoke-virtual {v14, v12}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLastServerSyncEndTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    iput-object v14, v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mLastServerSyncEndTime:Ljava/util/Date;

    .line 85
    iget-object v14, v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mLastServerSyncEndTime:Ljava/util/Date;

    if-nez v14, :cond_1

    iget-object v14, v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mLastServerSyncTime:Ljava/util/Date;

    iput-object v14, v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mLastServerSyncEndTime:Ljava/util/Date;

    .line 88
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v12, v15}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setIsSynchronising(Ljava/lang/String;Z)V

    .line 91
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v14

    invoke-virtual {v14}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 95
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v14, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob;

    invoke-direct {v14}, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v14, v0, v15, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Date;

    .line 100
    .local v10, "newServerSyncTime":Ljava/util/Date;
    iput-object v10, v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mCurrentServerSyncTime:Ljava/util/Date;

    .line 103
    if-nez v10, :cond_4

    new-instance v14, Ljava/lang/IllegalStateException;

    invoke-direct {v14}, Ljava/lang/IllegalStateException;-><init>()V

    throw v14

    .line 70
    .end local v6    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "newServerSyncTime":Ljava/util/Date;
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 71
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 106
    .restart local v6    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "newServerSyncTime":Ljava/util/Date;
    :cond_4
    invoke-virtual {v11}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->isAuthenticationProvided()Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v14, v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mUsername:Ljava/lang/String;

    iget-object v15, v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;->mPassword:Ljava/lang/String;

    invoke-static {v14, v15}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob;->buildBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 107
    :goto_2
    new-instance v14, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob;

    invoke-direct {v14}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v14, v0, v1, v2}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 110
    .local v13, "serverHomes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v14

    invoke-virtual {v14}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbOpenHome()Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;

    move-result-object v4

    .line 111
    .local v4, "database":Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;
    const/4 v14, 0x0

    invoke-virtual {v4, v6, v14}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->getAllItems(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v5

    .line 112
    .local v5, "databaseHomes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v8, "localHomes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .local v7, "home":Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    check-cast v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;

    .end local v7    # "home":Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 106
    .end local v4    # "database":Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;
    .end local v5    # "databaseHomes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;>;"
    .end local v8    # "localHomes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;>;"
    .end local v13    # "serverHomes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;>;"
    :cond_5
    const/16 p2, 0x0

    goto :goto_2

    .line 114
    .restart local v4    # "database":Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;
    .restart local v5    # "databaseHomes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;>;"
    .restart local v8    # "localHomes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;>;"
    .restart local v13    # "serverHomes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;>;"
    :cond_6
    new-instance v14, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v14}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {v8, v14}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v8

    .line 117
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v11}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob;->synchroniseListings(Ljava/util/Collection;Ljava/util/Collection;Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;)Z

    .line 120
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v14

    invoke-virtual {v14, v12, v10}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setLastServerSyncTime(Ljava/lang/String;Ljava/util/Date;)V

    .line 123
    new-instance v14, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob;

    invoke-direct {v14}, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v14, v0, v15, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Date;

    .line 126
    .local v9, "newServerSyncEndTime":Ljava/util/Date;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v14

    invoke-virtual {v14, v12, v9}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setLastServerSyncEndTime(Ljava/lang/String;Ljava/util/Date;)V

    .line 132
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v12, v15}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setIsSynchronising(Ljava/lang/String;Z)V

    .line 134
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    return-object v14
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 245
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    .line 246
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    new-instance v1, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 248
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
