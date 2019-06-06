.class Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1$1;
.super Ljava/lang/Object;
.source "JSAPrintDatabaseTableUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;I)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;

    .prologue
    .line 38
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1$1;->this$0:Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;

    iput p2, p0, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1$1;->val$which:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 40
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1$1;->this$0:Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;

    iget-object v2, v1, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1$1;->this$0:Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;

    iget-object v1, v1, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;->val$names:Ljava/util/List;

    iget v4, p0, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1$1;->val$which:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 42
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1$1;->this$0:Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;

    iget-object v1, v1, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1;->val$names:Ljava/util/List;

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAPrintDatabaseTableUtil$1$1;->val$which:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->printTable(Ljava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 46
    return-void

    .line 44
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method
