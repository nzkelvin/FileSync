.class Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap$1;
.super Ljava/lang/Object;
.source "JSAMapUtil.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;->keyCollection()Ljava/util/Collection;
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
        "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem",
        "<TK;>;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;

    .prologue
    .line 97
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap$1;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap$1;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap$1;->this$0:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap$1;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap$1;"
    check-cast p1, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap$1;->map(Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public map(Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem",
            "<TK;>;)TK;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap$1;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap$1;"
    .local p1, "item":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem<TK;>;"
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;->access$000(Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
