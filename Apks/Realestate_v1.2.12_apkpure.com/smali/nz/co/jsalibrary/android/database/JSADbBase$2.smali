.class Lnz/co/jsalibrary/android/database/JSADbBase$2;
.super Ljava/lang/Object;
.source "JSADbBase.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/database/JSADbBase;->getItemsCursor(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/database/JSADbBase;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/database/JSADbBase;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/database/JSADbBase;

    .prologue
    .line 810
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase$2;, "Lnz/co/jsalibrary/android/database/JSADbBase$2;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSADbBase$2;->this$0:Lnz/co/jsalibrary/android/database/JSADbBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 810
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase$2;, "Lnz/co/jsalibrary/android/database/JSADbBase$2;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSADbBase$2;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 811
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase$2;, "Lnz/co/jsalibrary/android/database/JSADbBase$2;"
    const-string v0, "?"

    return-object v0
.end method