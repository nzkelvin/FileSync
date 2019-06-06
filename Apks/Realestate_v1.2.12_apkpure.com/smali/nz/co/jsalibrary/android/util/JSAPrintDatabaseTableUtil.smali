.class public Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil;
.super Ljava/lang/Object;
.source "JSAPrintDatabaseTableUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPrintDatabaseTableDialog(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Landroid/app/AlertDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 24
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 26
    :cond_1
    invoke-static {p1}, Lnz/co/jsalibrary/android/database/JSADbBase;->getExistingTableNames(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v2

    .line 27
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 30
    .local v3, "titles":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 31
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    aput-object v4, v3, v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v4, -0x1

    new-instance v5, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;

    invoke-direct {v5, p1, v2}, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
