.class public final Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESMigrateMyPropertyListingJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESMigrateMyPropertyListingJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final LISTING_ID:Ljava/lang/String; = "listing_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundle(I)Landroid/os/Bundle;
    .locals 2
    .param p0, "listingId"    # I

    .prologue
    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    return-object v0
.end method

.method private static convertRating(I)I
    .locals 4
    .param p0, "oldRating"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 105
    const/4 v3, -0x1

    if-ne p0, v3, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    if-nez p0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 107
    :cond_2
    if-ne p0, v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 108
    :cond_3
    if-ne p0, v1, :cond_0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    const-string v20, "listing_id"

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 48
    .local v9, "listingId":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_0

    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 51
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v10

    .line 52
    .local v10, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {v10}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getInspectionOptions(I)Ljava/util/List;

    move-result-object v13

    .line 53
    .local v13, "options":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v19, "tuples":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;>;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;

    .line 55
    .local v12, "option":Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;
    iget-object v0, v12, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;->mCategoryTitle:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v9, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getInspectionOption(ILjava/lang/String;)Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;

    move-result-object v8

    .line 56
    .local v8, "detail":Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;
    if-eqz v8, :cond_1

    new-instance v21, Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-object/from16 v0, v21

    invoke-direct {v0, v12, v8}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v8    # "detail":Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;
    .end local v12    # "option":Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;
    :cond_2
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 61
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

    move-result-object v11

    .line 62
    .local v11, "myPropertyDatabase":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyComment()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

    move-result-object v6

    .line 63
    .local v6, "commentDatabase":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyRating()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;

    move-result-object v16

    .line 64
    .local v16, "ratingDatabase":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyPhoto()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;

    move-result-object v15

    .line 66
    .local v15, "photoDatabase":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnz/co/jsalibrary/android/tuple/JSATuple;

    .line 67
    .local v18, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;>;"
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 68
    invoke-virtual/range {v18 .. v18}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;

    move-object/from16 v0, v20

    iget v3, v0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;->mCategoryId:I

    .line 69
    .local v3, "categoryId":I
    invoke-virtual/range {v18 .. v18}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;

    move-object/from16 v0, v20

    iget-object v4, v0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;->mCategoryTitle:Ljava/lang/String;

    .line 70
    .local v4, "categoryTitle":Ljava/lang/String;
    const/16 v17, 0x1

    .line 75
    .local v17, "success":Z
    :try_start_0
    invoke-virtual {v11, v9, v7}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->insertOrUpdateItem(ILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result v17

    .line 78
    invoke-virtual/range {v18 .. v18}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;

    move-object/from16 v0, v20

    iget-object v0, v0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;->mNotes:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "comment":Ljava/lang/String;
    if-eqz v17, :cond_3

    invoke-virtual {v6, v9, v3, v5, v7}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->insertItem(IILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v22

    if-eqz v22, :cond_3

    const/16 v17, 0x1

    :goto_3
    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    goto :goto_3

    .line 81
    .end local v5    # "comment":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;

    move-object/from16 v0, v20

    iget-object v0, v0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;->mPhotos:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .local v14, "photo":Ljava/lang/String;
    if-eqz v17, :cond_5

    invoke-virtual {v15, v9, v3, v14, v7}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;->insertItem(IILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v17, 0x1

    :goto_5
    goto :goto_4

    :cond_5
    const/16 v17, 0x0

    goto :goto_5

    .line 84
    .end local v14    # "photo":Ljava/lang/String;
    :cond_6
    if-eqz v17, :cond_9

    invoke-virtual/range {v18 .. v18}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;

    move-object/from16 v0, v20

    iget v0, v0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;->mRating:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESMigrateMyPropertyListingJob;->convertRating(I)I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v9, v3, v1, v7}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->insertOrUpdateItem(IIILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result v20

    if-eqz v20, :cond_9

    const/16 v17, 0x1

    .line 87
    :goto_6
    if-eqz v17, :cond_7

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v4}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->removeInspectionOption(ILjava/lang/String;)Z

    .line 90
    :cond_7
    if-eqz v17, :cond_8

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_8
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .line 84
    :cond_9
    const/16 v17, 0x0

    goto :goto_6

    .line 93
    :catchall_0
    move-exception v20

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v20

    .line 97
    .end local v3    # "categoryId":I
    .end local v4    # "categoryTitle":Ljava/lang/String;
    .end local v17    # "success":Z
    .end local v18    # "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;>;"
    :cond_a
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    return-object v20
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESMigrateMyPropertyListingJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 117
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    const-string v1, "error migrating my property listing"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
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

    .line 119
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESMigrateMyPropertyListingJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
