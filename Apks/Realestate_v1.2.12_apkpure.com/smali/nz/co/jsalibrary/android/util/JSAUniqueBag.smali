.class public Lnz/co/jsalibrary/android/util/JSAUniqueBag;
.super Ljava/lang/Object;
.source "JSAUniqueBag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNextId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAUniqueBag;, "Lnz/co/jsalibrary/android/util/JSAUniqueBag<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/util/JSAUniqueBag;-><init>(Z)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 37
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAUniqueBag;, "Lnz/co/jsalibrary/android/util/JSAUniqueBag<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lnz/co/jsalibrary/android/util/JSAUniqueBag;-><init>(ZI)V

    .line 38
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "weak"    # Z

    .prologue
    .line 40
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAUniqueBag;, "Lnz/co/jsalibrary/android/util/JSAUniqueBag<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAUniqueBag;->mMap:Ljava/util/Map;

    .line 42
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "weak"    # Z
    .param p2, "initialCapacity"    # I

    .prologue
    .line 44
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAUniqueBag;, "Lnz/co/jsalibrary/android/util/JSAUniqueBag<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, p2}, Ljava/util/WeakHashMap;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAUniqueBag;->mMap:Ljava/util/Map;

    .line 46
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAUniqueBag;, "Lnz/co/jsalibrary/android/util/JSAUniqueBag<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAUniqueBag;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 50
    .local v0, "id":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 53
    :goto_0
    return v1

    .line 51
    :cond_0
    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAUniqueBag;->mNextId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnz/co/jsalibrary/android/util/JSAUniqueBag;->mNextId:I

    .line 52
    .local v1, "newId":I
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAUniqueBag;->mMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAUniqueBag;, "Lnz/co/jsalibrary/android/util/JSAUniqueBag<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAUniqueBag;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 64
    return-void
.end method

.method public getContents()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAUniqueBag;, "Lnz/co/jsalibrary/android/util/JSAUniqueBag<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAUniqueBag;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAUniqueBag;, "Lnz/co/jsalibrary/android/util/JSAUniqueBag<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAUniqueBag;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 58
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 59
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
