.class public final Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESSynchroniseMyPropertyListingsJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;
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
.field private static final CHANNEL:Ljava/lang/String; = "channel"

.field private static final DEBUG:Z = false

.field private static final MIGRATE_LEGACY_LISTINGS_ONLY:Ljava/lang/String; = "migration_only"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundle(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "channel"    # I

    .prologue
    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "channel"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    return-object v0
.end method

.method public static buildBundleMigrateLegacyListingsOnly()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "migration_only"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    return-object v0
.end method

.method private migrateLegacyListings(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 176
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-static {v8}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;->getPreferenceKeys(Landroid/content/SharedPreferences;)Ljava/util/Collection;

    move-result-object v7

    .line 177
    .local v7, "prefs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v8, "inspectionOption:(\\d+):(\\w+)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 178
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 179
    .local v6, "pref":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 180
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 182
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 183
    .local v3, "listingId":I
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "categoryTitle":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v9

    invoke-virtual {v9, v3, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getInspectionOption(ILjava/lang/String;)Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;

    move-result-object v2

    .line 185
    .local v2, "detail":Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;
    invoke-static {v3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESMigrateMyPropertyListingJob;->buildBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 186
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    new-instance v9, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESMigrateMyPropertyListingJob;

    invoke-direct {v9}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESMigrateMyPropertyListingJob;-><init>()V

    invoke-static {v9, p1, v0, p2}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "categoryTitle":Ljava/lang/String;
    .end local v2    # "detail":Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;
    .end local v3    # "listingId":I
    :catch_0
    move-exception v9

    goto :goto_0

    .line 189
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v6    # "pref":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private synchroniseListingComments(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;)I
    .locals 26
    .param p1, "localListing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .param p2, "remoteListing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;

    .prologue
    .line 345
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 346
    :cond_0
    if-eqz p1, :cond_4

    move-object/from16 v15, p1

    .line 347
    .local v15, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    :goto_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 348
    .local v14, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v16, 0x0

    .line 349
    .local v16, "localChangeCount":I
    const/16 v23, 0x1

    .line 352
    .local v23, "success":Z
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->comments:Ljava/util/List;

    if-eqz v2, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->comments:Ljava/util/List;

    move-object/from16 v21, v0

    .line 353
    .local v21, "remoteComments":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    :goto_1
    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->comments:Ljava/util/List;

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->comments:Ljava/util/List;

    move-object/from16 v18, v0

    .line 357
    .local v18, "localComments":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    :goto_2
    new-instance v12, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$3;-><init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;)V

    .line 365
    .local v12, "comparator":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->union(Ljava/util/Collection;Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;)Ljava/util/Collection;

    move-result-object v11

    .line 366
    .local v11, "comments":Ljava/util/Collection;, "Ljava/util/Collection<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_1
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    .line 369
    .local v10, "comment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    new-instance v2, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12, v10}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$4;-><init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;)V

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->find(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    .line 371
    .local v17, "localComment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    new-instance v2, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12, v10}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$5;-><init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;)V

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->find(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    .line 375
    .local v20, "remoteComment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    if-eqz v17, :cond_2

    if-eqz v20, :cond_2

    move-object/from16 v0, v17

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->comment:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->comment:Ljava/lang/String;

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 380
    :cond_2
    if-eqz v17, :cond_9

    if-eqz v20, :cond_9

    invoke-virtual/range {v17 .. v17}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->getUpdateTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_9

    .line 383
    iget v2, v15, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    move-object/from16 v0, v17

    iget v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->category:I

    move-object/from16 v0, v17

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->comment:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyCommentJob;->buildBundle(IIILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 384
    .local v9, "bundle":Landroid/os/Bundle;
    new-instance v2, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyCommentJob;

    invoke-direct {v2}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyCommentJob;-><init>()V

    move-object/from16 v0, p3

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUiThreadHandler:Landroid/os/Handler;

    invoke-static {v2, v3, v9, v4}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 386
    .local v22, "result":Z
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 387
    .local v13, "cv":Landroid/content/ContentValues;
    const-string v2, "mypropertycomment_update_timestamp"

    move-object/from16 v0, p3

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mCurrentServerSyncTime:Ljava/util/Date;

    invoke-static {v3}, Lnz/co/realestate/android/lib/util/RESListingUtil;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    if-eqz v22, :cond_3

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyComment()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

    move-result-object v2

    const-string v3, "mypropertycomment_internal_id"

    move-object/from16 v0, v17

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->internal_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v13, v14}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->updateSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    if-eqz v2, :cond_7

    const/16 v22, 0x1

    .line 390
    :cond_3
    :goto_4
    if-eqz v23, :cond_8

    if-eqz v22, :cond_8

    const/16 v23, 0x1

    .line 391
    :goto_5
    goto/16 :goto_3

    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v10    # "comment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    .end local v11    # "comments":Ljava/util/Collection;, "Ljava/util/Collection<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    .end local v12    # "comparator":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v15    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .end local v16    # "localChangeCount":I
    .end local v17    # "localComment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    .end local v18    # "localComments":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    .end local v20    # "remoteComment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    .end local v21    # "remoteComments":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    .end local v22    # "result":Z
    .end local v23    # "success":Z
    :cond_4
    move-object/from16 v15, p2

    .line 346
    goto/16 :goto_0

    .line 352
    .restart local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v15    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .restart local v16    # "localChangeCount":I
    .restart local v23    # "success":Z
    :cond_5
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_1

    .line 354
    .restart local v21    # "remoteComments":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    :cond_6
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyComment()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

    move-result-object v2

    const-string v3, "mypropertycomment_listing_id"

    iget v4, v15, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v14, v5}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->getSelectedItems(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v18

    goto/16 :goto_2

    .line 388
    .restart local v9    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "comment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    .restart local v11    # "comments":Ljava/util/Collection;, "Ljava/util/Collection<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    .restart local v12    # "comparator":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    .restart local v13    # "cv":Landroid/content/ContentValues;
    .restart local v17    # "localComment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    .restart local v18    # "localComments":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    .restart local v20    # "remoteComment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    .restart local v22    # "result":Z
    :cond_7
    const/16 v22, 0x0

    goto :goto_4

    .line 390
    :cond_8
    const/16 v23, 0x0

    goto :goto_5

    .line 394
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v22    # "result":Z
    :cond_9
    if-eqz v17, :cond_c

    if-eqz v20, :cond_c

    .line 397
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 398
    .restart local v13    # "cv":Landroid/content/ContentValues;
    const-string v2, "mypropertycomment_comment"

    move-object/from16 v0, v20

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->comment:Ljava/lang/String;

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v2, "mypropertycomment_update_timestamp"

    move-object/from16 v0, v20

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->updated_at:Ljava/lang/String;

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyComment()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

    move-result-object v2

    const-string v3, "mypropertycomment_internal_id"

    move-object/from16 v0, v17

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->internal_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v13, v14}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->updateSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    if-eqz v2, :cond_a

    const/16 v22, 0x1

    .line 401
    .restart local v22    # "result":Z
    :goto_6
    add-int/lit8 v16, v16, 0x1

    .line 402
    if-eqz v23, :cond_b

    if-eqz v22, :cond_b

    const/16 v23, 0x1

    .line 403
    :goto_7
    goto/16 :goto_3

    .line 400
    .end local v22    # "result":Z
    :cond_a
    const/16 v22, 0x0

    goto :goto_6

    .line 402
    .restart local v22    # "result":Z
    :cond_b
    const/16 v23, 0x0

    goto :goto_7

    .line 406
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v22    # "result":Z
    :cond_c
    if-eqz v17, :cond_12

    invoke-virtual/range {v17 .. v17}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->getUpdateTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_12

    .line 409
    invoke-virtual/range {p3 .. p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->isAuthenticationProvided()Z

    move-result v2

    if-eqz v2, :cond_e

    iget v2, v15, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    move-object/from16 v0, v17

    iget v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->category:I

    move-object/from16 v0, v17

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->comment:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v5, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mCurrentServerSyncTime:Ljava/util/Date;

    move-object/from16 v0, p3

    iget-object v6, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v7, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mPassword:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v8, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mChannel:I

    .line 410
    invoke-static/range {v2 .. v8}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob;->buildBundle(IILjava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v9

    .line 412
    .restart local v9    # "bundle":Landroid/os/Bundle;
    :goto_8
    new-instance v2, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob;

    invoke-direct {v2}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob;-><init>()V

    move-object/from16 v0, p3

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUiThreadHandler:Landroid/os/Handler;

    invoke-static {v2, v3, v9, v4}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    .line 414
    .local v24, "updatedComment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 415
    .restart local v13    # "cv":Landroid/content/ContentValues;
    const-string v2, "mypropertycomment_update_timestamp"

    move-object/from16 v0, p3

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mCurrentServerSyncTime:Ljava/util/Date;

    invoke-static {v3}, Lnz/co/realestate/android/lib/util/RESListingUtil;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    if-eqz v24, :cond_d

    const-string v2, "mypropertycomment_id"

    move-object/from16 v0, v24

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->id:Ljava/lang/Integer;

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    :cond_d
    if-eqz v24, :cond_10

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyComment()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

    move-result-object v2

    const-string v3, "mypropertycomment_internal_id"

    iget-object v4, v10, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->internal_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v13, v14}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->updateSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    if-eqz v2, :cond_f

    const/16 v22, 0x1

    .line 419
    .restart local v22    # "result":Z
    :goto_9
    if-eqz v23, :cond_11

    if-eqz v22, :cond_11

    const/16 v23, 0x1

    .line 420
    :goto_a
    goto/16 :goto_3

    .line 410
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v22    # "result":Z
    .end local v24    # "updatedComment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    :cond_e
    iget v2, v15, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    move-object/from16 v0, v17

    iget v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->category:I

    move-object/from16 v0, v17

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->comment:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v5, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mCurrentServerSyncTime:Ljava/util/Date;

    .line 411
    invoke-static {v2, v3, v4, v5}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob;->buildBundle(IILjava/lang/String;Ljava/util/Date;)Landroid/os/Bundle;

    move-result-object v9

    goto :goto_8

    .line 417
    .restart local v9    # "bundle":Landroid/os/Bundle;
    .restart local v13    # "cv":Landroid/content/ContentValues;
    .restart local v24    # "updatedComment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    :cond_f
    const/16 v22, 0x0

    goto :goto_9

    :cond_10
    const/16 v22, 0x0

    goto :goto_9

    .line 419
    .restart local v22    # "result":Z
    :cond_11
    const/16 v23, 0x0

    goto :goto_a

    .line 423
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v22    # "result":Z
    .end local v24    # "updatedComment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    :cond_12
    if-eqz v17, :cond_15

    .line 426
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyComment()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

    move-result-object v2

    const-string v3, "mypropertycomment_internal_id"

    move-object/from16 v0, v17

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->internal_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v14}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->deleteSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    if-eqz v2, :cond_13

    const/16 v22, 0x1

    .line 427
    .restart local v22    # "result":Z
    :goto_b
    add-int/lit8 v16, v16, 0x1

    .line 428
    if-eqz v23, :cond_14

    if-eqz v22, :cond_14

    const/16 v23, 0x1

    .line 429
    :goto_c
    goto/16 :goto_3

    .line 426
    .end local v22    # "result":Z
    :cond_13
    const/16 v22, 0x0

    goto :goto_b

    .line 428
    .restart local v22    # "result":Z
    :cond_14
    const/16 v23, 0x0

    goto :goto_c

    .line 432
    .end local v22    # "result":Z
    :cond_15
    invoke-virtual/range {v20 .. v20}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->getUpdateTime()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mLastServerSyncEndTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 443
    new-instance v19, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;

    iget v2, v15, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;-><init>(I)V

    .line 444
    .local v19, "p":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyComment()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v14, v1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v22

    .line 445
    .restart local v22    # "result":Z
    add-int/lit8 v16, v16, 0x1

    .line 446
    if-eqz v23, :cond_16

    if-eqz v22, :cond_16

    const/16 v23, 0x1

    .line 447
    :goto_d
    goto/16 :goto_3

    .line 446
    :cond_16
    const/16 v23, 0x0

    goto :goto_d

    .line 453
    .end local v19    # "p":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;
    .end local v22    # "result":Z
    :cond_17
    invoke-virtual/range {p3 .. p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->isAuthenticationProvided()Z

    move-result v2

    if-eqz v2, :cond_18

    iget v2, v15, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    move-object/from16 v0, v20

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->id:Ljava/lang/Integer;

    .line 454
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v5, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mPassword:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v6, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mChannel:I

    invoke-static {v2, v3, v4, v5, v6}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyCommentJob;->buildBundle(IILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v9

    .line 456
    .restart local v9    # "bundle":Landroid/os/Bundle;
    :goto_e
    new-instance v2, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyCommentJob;

    invoke-direct {v2}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyCommentJob;-><init>()V

    move-object/from16 v0, p3

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUiThreadHandler:Landroid/os/Handler;

    invoke-static {v2, v3, v9, v4}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 457
    .restart local v22    # "result":Z
    if-eqz v23, :cond_19

    if-eqz v22, :cond_19

    const/16 v23, 0x1

    :goto_f
    goto/16 :goto_3

    .line 454
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v22    # "result":Z
    :cond_18
    iget v2, v15, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    move-object/from16 v0, v20

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->id:Ljava/lang/Integer;

    .line 455
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyCommentJob;->buildBundle(II)Landroid/os/Bundle;

    move-result-object v9

    goto :goto_e

    .line 457
    .restart local v9    # "bundle":Landroid/os/Bundle;
    .restart local v22    # "result":Z
    :cond_19
    const/16 v23, 0x0

    goto :goto_f

    .line 461
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v10    # "comment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    .end local v17    # "localComment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    .end local v20    # "remoteComment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    .end local v22    # "result":Z
    :cond_1a
    if-eqz v23, :cond_1b

    .end local v16    # "localChangeCount":I
    :goto_10
    return v16

    .restart local v16    # "localChangeCount":I
    :cond_1b
    const/16 v16, -0x1

    goto :goto_10
.end method

.method private synchroniseListingDetails(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;)Z
    .locals 12
    .param p1, "localListing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .param p2, "remoteListing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;

    .prologue
    .line 288
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 289
    :cond_0
    if-eqz p1, :cond_2

    move-object v3, p1

    .line 292
    .local v3, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    :goto_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v6

    .line 293
    .local v6, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {v6}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v9

    invoke-virtual {v6, v9}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getInspectionOptions(I)Ljava/util/List;

    move-result-object v8

    .line 294
    .local v8, "options":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v2, "details":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;

    .line 296
    .local v7, "option":Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;
    iget v10, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    iget-object v11, v7, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;->mCategoryTitle:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getInspectionOption(ILjava/lang/String;)Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;

    move-result-object v1

    .line 297
    .local v1, "detail":Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;
    if-eqz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "detail":Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;
    .end local v2    # "details":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;>;"
    .end local v3    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .end local v6    # "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    .end local v7    # "option":Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;
    .end local v8    # "options":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;>;"
    :cond_2
    move-object v3, p2

    .line 289
    goto :goto_0

    .line 301
    .restart local v2    # "details":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;>;"
    .restart local v3    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .restart local v6    # "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    .restart local v8    # "options":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;>;"
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;->synchroniseListingComments(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;)I

    move-result v4

    .line 302
    .local v4, "localCommentChangeCount":I
    invoke-direct {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;->synchroniseListingRatings(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;)I

    move-result v5

    .line 305
    .local v5, "localRatingChangeCount":I
    if-gtz v4, :cond_4

    if-lez v5, :cond_5

    .line 306
    :cond_4
    iget v9, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    invoke-static {v9}, Lnz/co/realestate/android/lib/eo/database/job/RESCacheMyPropertyListingJob;->buildBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 307
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v9, Lnz/co/realestate/android/lib/eo/database/job/RESCacheMyPropertyListingJob;

    invoke-direct {v9}, Lnz/co/realestate/android/lib/eo/database/job/RESCacheMyPropertyListingJob;-><init>()V

    iget-object v10, p3, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mContext:Landroid/content/Context;

    iget-object v11, p3, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUiThreadHandler:Landroid/os/Handler;

    invoke-static {v9, v10, v0, v11}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    .line 311
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    const/4 v9, -0x1

    if-eq v4, v9, :cond_6

    const/4 v9, -0x1

    if-eq v5, v9, :cond_6

    const/4 v9, 0x1

    :goto_2
    return v9

    :cond_6
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private synchroniseListingRatings(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;)I
    .locals 25
    .param p1, "localListing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .param p2, "remoteListing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;

    .prologue
    .line 485
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 486
    :cond_0
    if-eqz p1, :cond_4

    move-object/from16 v12, p1

    .line 487
    .local v12, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    :goto_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 488
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v13, 0x0

    .line 489
    .local v13, "localChangeCount":I
    const/16 v22, 0x1

    .line 492
    .local v22, "success":Z
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->ratings:Ljava/util/List;

    if-eqz v2, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->ratings:Ljava/util/List;

    move-object/from16 v20, v0

    .line 493
    .local v20, "remoteRatings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;>;"
    :goto_1
    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->ratings:Ljava/util/List;

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v15, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->ratings:Ljava/util/List;

    .line 497
    .local v15, "localRatings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;>;"
    :goto_2
    new-instance v9, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$6;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$6;-><init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;)V

    .line 504
    .local v9, "comparator":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;>;"
    move-object/from16 v0, v20

    invoke-static {v15, v0, v9}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->union(Ljava/util/Collection;Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;)Ljava/util/Collection;

    move-result-object v18

    .line 505
    .local v18, "ratings":Ljava/util/Collection;, "Ljava/util/Collection<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_1
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    .line 508
    .local v17, "rating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    new-instance v2, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v9, v1}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$7;-><init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;)V

    invoke-static {v15, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->find(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    .line 510
    .local v14, "localRating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    new-instance v2, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v9, v1}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$8;-><init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;)V

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->find(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    .line 514
    .local v19, "remoteRating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    if-eqz v14, :cond_2

    if-eqz v19, :cond_2

    iget v2, v14, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->rating:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    iget v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->rating:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 519
    :cond_2
    if-eqz v14, :cond_9

    if-eqz v19, :cond_9

    invoke-virtual {v14}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->getUpdateTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_9

    .line 522
    iget v2, v12, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    iget v3, v14, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->category:I

    iget v4, v14, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->rating:I

    invoke-static {v2, v3, v4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob;->buildBundle(III)Landroid/os/Bundle;

    move-result-object v8

    .line 523
    .local v8, "bundle":Landroid/os/Bundle;
    new-instance v2, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob;

    invoke-direct {v2}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob;-><init>()V

    move-object/from16 v0, p3

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUiThreadHandler:Landroid/os/Handler;

    invoke-static {v2, v3, v8, v4}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    .line 525
    .local v21, "result":Z
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 526
    .local v10, "cv":Landroid/content/ContentValues;
    const-string v2, "mypropertyrating_update_timestamp"

    move-object/from16 v0, p3

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mCurrentServerSyncTime:Ljava/util/Date;

    invoke-static {v3}, Lnz/co/realestate/android/lib/util/RESListingUtil;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    if-eqz v21, :cond_3

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyRating()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;

    move-result-object v2

    const-string v3, "mypropertyrating_internal_id"

    iget-object v4, v14, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->internal_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v10, v11}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->updateSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    if-eqz v2, :cond_7

    const/16 v21, 0x1

    .line 529
    :cond_3
    :goto_4
    if-eqz v22, :cond_8

    if-eqz v21, :cond_8

    const/16 v22, 0x1

    .line 530
    :goto_5
    goto/16 :goto_3

    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v9    # "comparator":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;>;"
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .end local v13    # "localChangeCount":I
    .end local v14    # "localRating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    .end local v15    # "localRatings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;>;"
    .end local v17    # "rating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    .end local v18    # "ratings":Ljava/util/Collection;, "Ljava/util/Collection<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;>;"
    .end local v19    # "remoteRating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    .end local v20    # "remoteRatings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;>;"
    .end local v21    # "result":Z
    .end local v22    # "success":Z
    :cond_4
    move-object/from16 v12, p2

    .line 486
    goto/16 :goto_0

    .line 492
    .restart local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .restart local v13    # "localChangeCount":I
    .restart local v22    # "success":Z
    :cond_5
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_1

    .line 494
    .restart local v20    # "remoteRatings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;>;"
    :cond_6
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyRating()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;

    move-result-object v2

    const-string v3, "mypropertyrating_listing_id"

    iget v4, v12, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v11, v5}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->getSelectedItems(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v15

    goto/16 :goto_2

    .line 527
    .restart local v8    # "bundle":Landroid/os/Bundle;
    .restart local v9    # "comparator":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;>;"
    .restart local v10    # "cv":Landroid/content/ContentValues;
    .restart local v14    # "localRating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    .restart local v15    # "localRatings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;>;"
    .restart local v17    # "rating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    .restart local v18    # "ratings":Ljava/util/Collection;, "Ljava/util/Collection<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;>;"
    .restart local v19    # "remoteRating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    .restart local v21    # "result":Z
    :cond_7
    const/16 v21, 0x0

    goto :goto_4

    .line 529
    :cond_8
    const/16 v22, 0x0

    goto :goto_5

    .line 533
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v21    # "result":Z
    :cond_9
    if-eqz v14, :cond_c

    if-eqz v19, :cond_c

    .line 536
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 537
    .restart local v10    # "cv":Landroid/content/ContentValues;
    const-string v2, "mypropertyrating_rating"

    move-object/from16 v0, v19

    iget v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->rating:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 538
    const-string v2, "mypropertyrating_update_timestamp"

    move-object/from16 v0, v19

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->updated_at:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyRating()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;

    move-result-object v2

    const-string v3, "mypropertyrating_internal_id"

    iget-object v4, v14, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->internal_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v10, v11}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->updateSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    if-eqz v2, :cond_a

    const/16 v21, 0x1

    .line 540
    .restart local v21    # "result":Z
    :goto_6
    add-int/lit8 v13, v13, 0x1

    .line 542
    if-eqz v22, :cond_b

    if-eqz v21, :cond_b

    const/16 v22, 0x1

    .line 543
    :goto_7
    goto/16 :goto_3

    .line 539
    .end local v21    # "result":Z
    :cond_a
    const/16 v21, 0x0

    goto :goto_6

    .line 542
    .restart local v21    # "result":Z
    :cond_b
    const/16 v22, 0x0

    goto :goto_7

    .line 546
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v21    # "result":Z
    :cond_c
    if-eqz v14, :cond_12

    .line 549
    invoke-virtual/range {p3 .. p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->isAuthenticationProvided()Z

    move-result v2

    if-eqz v2, :cond_e

    iget v2, v12, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    iget v3, v14, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->category:I

    iget v4, v14, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->rating:I

    move-object/from16 v0, p3

    iget-object v5, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v6, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mPassword:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v7, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mChannel:I

    .line 550
    invoke-static/range {v2 .. v7}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob;->buildBundle(IIILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v8

    .line 552
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :goto_8
    new-instance v2, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob;

    invoke-direct {v2}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob;-><init>()V

    move-object/from16 v0, p3

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUiThreadHandler:Landroid/os/Handler;

    invoke-static {v2, v3, v8, v4}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    .line 554
    .local v23, "updatedRating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 555
    .restart local v10    # "cv":Landroid/content/ContentValues;
    if-eqz v23, :cond_d

    const-string v2, "mypropertyrating_id"

    move-object/from16 v0, v23

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->id:Ljava/lang/Integer;

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 556
    :cond_d
    const-string v2, "mypropertyrating_update_timestamp"

    move-object/from16 v0, p3

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mCurrentServerSyncTime:Ljava/util/Date;

    invoke-static {v3}, Lnz/co/realestate/android/lib/util/RESListingUtil;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    if-eqz v23, :cond_10

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyRating()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;

    move-result-object v2

    const-string v3, "mypropertyrating_internal_id"

    move-object/from16 v0, v17

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->internal_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v10, v11}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->updateSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    if-eqz v2, :cond_f

    const/16 v21, 0x1

    .line 559
    .restart local v21    # "result":Z
    :goto_9
    if-eqz v22, :cond_11

    if-eqz v21, :cond_11

    const/16 v22, 0x1

    .line 560
    :goto_a
    goto/16 :goto_3

    .line 550
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v21    # "result":Z
    .end local v23    # "updatedRating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    :cond_e
    iget v2, v12, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    iget v3, v14, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->category:I

    iget v4, v14, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->rating:I

    .line 551
    invoke-static {v2, v3, v4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob;->buildBundle(III)Landroid/os/Bundle;

    move-result-object v8

    goto :goto_8

    .line 557
    .restart local v8    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "cv":Landroid/content/ContentValues;
    .restart local v23    # "updatedRating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    :cond_f
    const/16 v21, 0x0

    goto :goto_9

    :cond_10
    const/16 v21, 0x0

    goto :goto_9

    .line 559
    .restart local v21    # "result":Z
    :cond_11
    const/16 v22, 0x0

    goto :goto_a

    .line 566
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v21    # "result":Z
    .end local v23    # "updatedRating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    :cond_12
    new-instance v16, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;

    iget v2, v12, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;-><init>(I)V

    .line 567
    .local v16, "p":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyRating()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v11, v1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v21

    .line 568
    .restart local v21    # "result":Z
    add-int/lit8 v13, v13, 0x1

    .line 569
    if-eqz v22, :cond_13

    if-eqz v21, :cond_13

    const/16 v22, 0x1

    :goto_b
    goto/16 :goto_3

    :cond_13
    const/16 v22, 0x0

    goto :goto_b

    .line 573
    .end local v14    # "localRating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    .end local v16    # "p":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;
    .end local v17    # "rating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    .end local v19    # "remoteRating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    .end local v21    # "result":Z
    :cond_14
    if-eqz v22, :cond_15

    .end local v13    # "localChangeCount":I
    :goto_c
    return v13

    .restart local v13    # "localChangeCount":I
    :cond_15
    const/4 v13, -0x1

    goto :goto_c
.end method

.method private synchroniseListings(Ljava/util/Collection;Ljava/util/Collection;Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;)Z
    .locals 16
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;",
            ">;",
            "Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "localListings":Ljava/util/Collection;, "Ljava/util/Collection<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;>;"
    .local p2, "remoteListings":Ljava/util/Collection;, "Ljava/util/Collection<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;>;"
    if-nez p2, :cond_1

    const/4 v10, 0x0

    .line 280
    :cond_0
    return v10

    .line 210
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->union(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v6

    .line 211
    .local v6, "listings":Ljava/util/Collection;, "Ljava/util/Collection<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v4

    .line 212
    .local v4, "dbhelper":Lnz/co/realestate/android/lib/core/RESDbHelperBase;
    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 213
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x1

    .line 215
    .local v10, "success":Z
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .line 218
    .local v5, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    new-instance v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v5}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$1;-><init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)V

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->find(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .line 220
    .local v7, "localListing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    new-instance v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v5}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$2;-><init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)V

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->find(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .line 224
    .local v8, "remoteListing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    .line 225
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v7, v8, v1}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;->synchroniseListingDetails(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;)Z

    goto :goto_0

    .line 229
    :cond_2
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getUpdateTime()Ljava/util/Date;

    move-result-object v11

    if-nez v11, :cond_7

    .line 232
    invoke-virtual/range {p3 .. p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->isAuthenticationProvided()Z

    move-result v11

    if-eqz v11, :cond_5

    iget v11, v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    move-object/from16 v0, p3

    iget-object v13, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v14, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mPassword:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v15, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mChannel:I

    .line 233
    invoke-static {v11, v13, v14, v15}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyListingJob;->buildBundle(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 235
    .local v2, "bundle":Landroid/os/Bundle;
    :goto_1
    new-instance v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyListingJob;

    invoke-direct {v11}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyListingJob;-><init>()V

    move-object/from16 v0, p3

    iget-object v13, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v14, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUiThreadHandler:Landroid/os/Handler;

    invoke-static {v11, v13, v2, v14}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 236
    .local v9, "result":Z
    move-object/from16 v0, p3

    iget-object v11, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mCurrentServerSyncTime:Ljava/util/Date;

    invoke-virtual {v7, v11}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->setUpdateTime(Ljava/util/Date;)V

    .line 237
    if-eqz v9, :cond_3

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

    move-result-object v11

    invoke-virtual {v11, v7, v3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->updateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v9

    .line 238
    :cond_3
    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v7, v8, v1}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;->synchroniseListingDetails(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;)Z

    move-result v9

    .line 239
    :cond_4
    if-eqz v10, :cond_6

    if-eqz v9, :cond_6

    const/4 v10, 0x1

    .line 240
    :goto_2
    goto/16 :goto_0

    .line 233
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v9    # "result":Z
    :cond_5
    iget v11, v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    .line 234
    invoke-static {v11}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyListingJob;->buildBundle(I)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1

    .line 239
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v9    # "result":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 243
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v9    # "result":Z
    :cond_7
    if-eqz v7, :cond_a

    .line 246
    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

    move-result-object v11

    invoke-virtual {v11, v5, v3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->deleteItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v11

    if-eqz v11, :cond_8

    const/4 v9, 0x1

    .line 247
    .restart local v9    # "result":Z
    :goto_3
    if-eqz v10, :cond_9

    if-eqz v9, :cond_9

    const/4 v10, 0x1

    .line 248
    :goto_4
    goto/16 :goto_0

    .line 246
    .end local v9    # "result":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 247
    .restart local v9    # "result":Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .line 251
    .end local v9    # "result":Z
    :cond_a
    invoke-virtual {v8}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getUpdateTime()Ljava/util/Date;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v13, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mLastServerSyncEndTime:Ljava/util/Date;

    invoke-virtual {v11, v13}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 262
    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingDetail()Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

    move-result-object v11

    iget-object v13, v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v11, v13, v3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->insertOrUpdateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v9

    .line 263
    .restart local v9    # "result":Z
    if-eqz v9, :cond_b

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

    move-result-object v11

    invoke-virtual {v11, v5, v3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->insertOrUpdateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v9

    .line 264
    :cond_b
    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v7, v8, v1}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;->synchroniseListingDetails(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;)Z

    move-result v9

    .line 265
    :cond_c
    if-eqz v10, :cond_d

    if-eqz v9, :cond_d

    const/4 v10, 0x1

    .line 266
    :goto_5
    goto/16 :goto_0

    .line 265
    :cond_d
    const/4 v10, 0x0

    goto :goto_5

    .line 272
    .end local v9    # "result":Z
    :cond_e
    invoke-virtual/range {p3 .. p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->isAuthenticationProvided()Z

    move-result v11

    if-eqz v11, :cond_f

    iget v11, v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    move-object/from16 v0, p3

    iget-object v13, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v14, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mPassword:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v15, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mChannel:I

    .line 273
    invoke-static {v11, v13, v14, v15}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyListingJob;->buildBundle(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 275
    .restart local v2    # "bundle":Landroid/os/Bundle;
    :goto_6
    new-instance v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyListingJob;

    invoke-direct {v11}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyListingJob;-><init>()V

    move-object/from16 v0, p3

    iget-object v13, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v14, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUiThreadHandler:Landroid/os/Handler;

    invoke-static {v11, v13, v2, v14}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 276
    .restart local v9    # "result":Z
    if-eqz v10, :cond_10

    if-eqz v9, :cond_10

    const/4 v10, 0x1

    :goto_7
    goto/16 :goto_0

    .line 273
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v9    # "result":Z
    :cond_f
    iget v11, v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    .line 274
    invoke-static {v11}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyListingJob;->buildBundle(I)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_6

    .line 276
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v9    # "result":Z
    :cond_10
    const/4 v10, 0x0

    goto :goto_7
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    if-eqz p2, :cond_3

    const-string v9, "migration_only"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 93
    .local v2, "migrateLegacyListingsOnly":Z
    :goto_0
    const-string v6, "my_property_listings"

    .line 95
    .local v6, "section":Ljava/lang/String;
    new-instance v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;

    const/4 v9, 0x0

    invoke-direct {v5, v9}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;-><init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$1;)V

    .line 96
    .local v5, "params":Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;
    if-eqz p2, :cond_4

    const-string v9, "channel"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "channel"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    :goto_1
    iput v9, v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mChannel:I

    .line 97
    if-eqz p2, :cond_5

    const-string v9, "username"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    iput-object v9, v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUsername:Ljava/lang/String;

    .line 98
    if-eqz p2, :cond_6

    const-string v9, "password"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_3
    iput-object v9, v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mPassword:Ljava/lang/String;

    .line 99
    iput-object p3, v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUiThreadHandler:Landroid/os/Handler;

    .line 100
    iput-object p1, v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mContext:Landroid/content/Context;

    .line 105
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v9

    invoke-virtual {v9, v6}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLastServerSyncTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mLastServerSyncTime:Ljava/util/Date;

    .line 106
    iget-object v9, v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mLastServerSyncTime:Ljava/util/Date;

    if-nez v9, :cond_0

    new-instance v9, Ljava/util/Date;

    const-wide/16 v10, 0x0

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    iput-object v9, v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mLastServerSyncTime:Ljava/util/Date;

    .line 111
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v9

    invoke-virtual {v9, v6}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLastServerSyncEndTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mLastServerSyncEndTime:Ljava/util/Date;

    .line 112
    iget-object v9, v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mLastServerSyncEndTime:Ljava/util/Date;

    if-nez v9, :cond_1

    iget-object v9, v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mLastServerSyncTime:Ljava/util/Date;

    iput-object v9, v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mLastServerSyncEndTime:Ljava/util/Date;

    .line 115
    :cond_1
    if-nez v2, :cond_2

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v6, v10}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setIsSynchronising(Ljava/lang/String;Z)V

    .line 118
    :cond_2
    invoke-direct {p0, p1, p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;->migrateLegacyListings(Landroid/content/Context;Landroid/os/Handler;)V

    .line 121
    if-eqz v2, :cond_7

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 168
    :goto_4
    return-object v9

    .line 92
    .end local v2    # "migrateLegacyListingsOnly":Z
    .end local v5    # "params":Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;
    .end local v6    # "section":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 96
    .restart local v2    # "migrateLegacyListingsOnly":Z
    .restart local v5    # "params":Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;
    .restart local v6    # "section":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getMyPropertyChannel()I

    move-result v9

    goto :goto_1

    .line 97
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 98
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 124
    :cond_7
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 130
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob;

    invoke-direct {v9}, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob;-><init>()V

    const/4 v10, 0x0

    invoke-static {v9, p1, v10, p3}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    .line 135
    .local v4, "newServerSyncTime":Ljava/util/Date;
    iput-object v4, v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mCurrentServerSyncTime:Ljava/util/Date;

    .line 138
    if-nez v4, :cond_8

    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9}, Ljava/lang/IllegalStateException;-><init>()V

    throw v9

    .line 141
    :cond_8
    invoke-virtual {v5}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->isAuthenticationProvided()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mUsername:Ljava/lang/String;

    iget-object v10, v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mPassword:Ljava/lang/String;

    iget v11, v5, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;->mChannel:I

    invoke-static {v9, v10, v11}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob;->buildBundle(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p2

    .line 142
    :goto_5
    new-instance v9, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob;

    invoke-direct {v9}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob;-><init>()V

    invoke-static {v9, p1, p2, p3}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 145
    .local v7, "serverListings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

    move-result-object v8

    .line 146
    .local v8, "table":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;
    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->getAllItems(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v1

    .line 149
    .local v1, "localListings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;>;"
    invoke-direct {p0, v1, v7, v5}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;->synchroniseListings(Ljava/util/Collection;Ljava/util/Collection;Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;)Z

    .line 152
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v9

    invoke-virtual {v9, v6, v4}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setLastServerSyncTime(Ljava/lang/String;Ljava/util/Date;)V

    .line 155
    new-instance v9, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob;

    invoke-direct {v9}, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob;-><init>()V

    const/4 v10, 0x0

    invoke-static {v9, p1, v10, p3}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    .line 158
    .local v3, "newServerSyncEndTime":Ljava/util/Date;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v9

    invoke-virtual {v9, v6, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setLastServerSyncEndTime(Ljava/lang/String;Ljava/util/Date;)V

    .line 161
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setIsSynchronising(Ljava/lang/String;Z)V

    .line 168
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_4

    .line 141
    .end local v1    # "localListings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;>;"
    .end local v3    # "newServerSyncEndTime":Ljava/util/Date;
    .end local v7    # "serverListings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;>;"
    .end local v8    # "table":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;
    :cond_9
    const/4 p2, 0x0

    goto :goto_5
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    .line 600
    new-instance v1, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v2, Lnz/co/realestate/android/lib/R$string;->error_synchronising_my_property:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 601
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

    .line 602
    const-string v0, "my_property_listings"

    .line 603
    .local v0, "section":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setIsSynchronising(Ljava/lang/String;Z)V

    .line 604
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
