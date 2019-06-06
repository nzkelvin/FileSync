.class final Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;
.super Ljava/lang/Object;
.source "JSAMapUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAMapUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProxyHashItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mFunction:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction",
            "<TK;>;TK;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem<TK;>;"
    .local p1, "function":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;->mFunction:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;

    .line 115
    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;->mKey:Ljava/lang/Object;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;

    .prologue
    .line 109
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;->mKey:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 123
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem<TK;>;"
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 125
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 124
    check-cast v0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;

    .line 125
    .local v0, "item":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem<TK;>;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;->mFunction:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;->mKey:Ljava/lang/Object;

    iget-object v3, v0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;->mKey:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 119
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem<TK;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;->mFunction:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;->mKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
