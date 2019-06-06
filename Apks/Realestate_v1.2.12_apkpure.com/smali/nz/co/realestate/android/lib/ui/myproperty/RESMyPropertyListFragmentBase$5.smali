.class Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "RESMyPropertyListFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<+",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 176
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;->this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;

    invoke-direct {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v8

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 181
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 184
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 185
    .local v0, "archiveCutoffCalendar":Ljava/util/Calendar;
    const/4 v8, 0x5

    const/16 v9, -0x1e

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 186
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 189
    .local v1, "archiveCutoffDate":Ljava/util/Date;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v8

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v4, v9}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->getAllItems(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v7

    .line 190
    .local v7, "wrappedListings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;>;"
    new-instance v8, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$1;

    invoke-direct {v8, p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$1;-><init>(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;)V

    invoke-static {v7, v8}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v5

    .line 194
    .local v5, "listings":Ljava/util/List;, "Ljava/util/List<+Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;>;"
    new-instance v8, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$2;

    invoke-direct {v8, p0, v1}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$2;-><init>(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;Ljava/util/Date;)V

    invoke-static {v5, v8}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v5

    .line 202
    new-instance v8, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$3;

    invoke-direct {v8, p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$3;-><init>(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;)V

    invoke-static {v5, v8}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v2

    .line 206
    .local v2, "archivedListings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 221
    .end local v5    # "listings":Ljava/util/List;, "Ljava/util/List<+Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;>;"
    :goto_0
    return-object v5

    .line 209
    .restart local v5    # "listings":Ljava/util/List;, "Ljava/util/List<+Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;>;"
    :cond_0
    invoke-interface {v5, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 212
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_1

    .line 213
    new-instance v8, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;

    sget v9, Lnz/co/realestate/android/lib/R$string;->current_properties:I

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    :cond_1
    new-instance v8, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;

    sget v9, Lnz/co/realestate/android/lib/R$string;->archived_properties:I

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v5, v6

    .line 221
    goto :goto_0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onStartLoading()V

    .line 226
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;->forceLoad()V

    .line 227
    return-void
.end method
