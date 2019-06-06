.class Lnz/co/jsalibrary/android/database/JSADbBase$6;
.super Ljava/lang/Object;
.source "JSADbBase.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/database/JSADbBase;->getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
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
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
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
    .line 1405
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase$6;, "Lnz/co/jsalibrary/android/database/JSADbBase$6;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSADbBase$6;->this$0:Lnz/co/jsalibrary/android/database/JSADbBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1405
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase$6;, "Lnz/co/jsalibrary/android/database/JSADbBase$6;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSADbBase$6;->map(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1406
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase$6;, "Lnz/co/jsalibrary/android/database/JSADbBase$6;"
    .local p1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
