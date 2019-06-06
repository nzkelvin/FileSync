.class public Lnz/co/realestate/android/lib/eo/database/job/RESCacheMyPropertyListingJob;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;
.source "RESCacheMyPropertyListingJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;",
        ">;"
    }
.end annotation


# static fields
.field private static final LISTING_ID:Ljava/lang/String; = "listing_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;-><init>()V

    return-void
.end method

.method public static buildBundle(I)Landroid/os/Bundle;
    .locals 2
    .param p0, "listingId"    # I

    .prologue
    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    return-object v0
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
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/job/RESCacheMyPropertyListingJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 31
    const-string v3, "listing_id"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 32
    .local v2, "listingId":I
    if-ne v2, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 35
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 36
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->getItem(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .line 39
    .local v1, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->addCachedMyPropertyListing(ILnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)V

    .line 41
    return-object v1
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/job/RESCacheMyPropertyListingJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 45
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    const-string v1, "error caching my property listings"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
