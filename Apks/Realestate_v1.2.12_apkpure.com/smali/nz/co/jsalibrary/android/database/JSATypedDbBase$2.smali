.class Lnz/co/jsalibrary/android/database/JSATypedDbBase$2;
.super Ljava/lang/Object;
.source "JSATypedDbBase.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/database/JSATypedDbBase;->deleteItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<TT;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/database/JSATypedDbBase;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/database/JSATypedDbBase;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    .prologue
    .line 1202
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase$2;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase$2;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$2;->this$0:Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1202
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase$2;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase$2;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$2;->map(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1204
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase$2;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase$2;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$2;->this$0:Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getUniqueId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
