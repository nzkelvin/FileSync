.class final Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;
.super Ljava/lang/Object;
.source "JSAPrintDatabaseTableUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil;->createPrintDatabaseTableDialog(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic val$names:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;->val$names:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 36
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 38
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1$1;

    invoke-direct {v1, p0, p2}, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1$1;-><init>(Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 48
    return-void
.end method
