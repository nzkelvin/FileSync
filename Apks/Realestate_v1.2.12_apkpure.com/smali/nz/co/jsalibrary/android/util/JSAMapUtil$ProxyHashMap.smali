.class public Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;
.super Ljava/lang/Object;
.source "JSAMapUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAMapUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxyHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mBackingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem",
            "<TK;>;TV;>;"
        }
    .end annotation
.end field

.field private final mFunction:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap<TK;TV;>;"
    .local p1, "function":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 79
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;->mBackingMap:Ljava/util/HashMap;

    .line 80
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;->mFunction:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;

    .line 81
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;->mBackingMap:Ljava/util/HashMap;

    new-instance v1, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;->mFunction:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;

    invoke-direct {v1, v2, p1}, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;-><init>(Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;->mBackingMap:Ljava/util/HashMap;

    new-instance v1, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;->mFunction:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;

    invoke-direct {v1, v2, p1}, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;-><init>(Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keyCollection()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap<TK;TV;>;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;->mBackingMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 97
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem<TK;>;>;"
    new-instance v1, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap$1;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap$1;-><init>(Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;)V

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;->mBackingMap:Ljava/util/HashMap;

    new-instance v1, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;->mFunction:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;

    invoke-direct {v1, v2, p1}, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;-><init>(Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
