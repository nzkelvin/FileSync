.class Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase$2;
.super Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;
.source "RESRecentListingsListFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 107
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase$2;->this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;

    invoke-direct {p0, p2}, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadCursor()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 109
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 110
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbRecentPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbRecentPropertyListing;

    move-result-object v0

    .line 111
    .local v0, "database":Lnz/co/realestate/android/lib/eo/database/RESDbRecentPropertyListing;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT *, _ROWID_ as _id FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbRecentPropertyListing;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ORDER BY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recentpropertylisting_internal_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DESC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method
