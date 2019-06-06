.class public Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;
.super Ljava/lang/Object;
.source "JSATypedDbBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/database/JSATypedDbBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QueryMap"
.end annotation


# instance fields
.field protected mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 1132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;->mMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected add(Lnz/co/jsalibrary/android/database/JSATypedDbBase;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 1137
    .local p1, "database":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;->mMap:Ljava/util/Map;

    iget-object v2, p1, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCls:Ljava/lang/Class;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;->mMap:Ljava/util/Map;

    iget-object v2, p1, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCls:Ljava/lang/Class;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;->mMap:Ljava/util/Map;

    iget-object v2, p1, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCls:Ljava/lang/Class;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1139
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1, p2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getUniqueId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    return-void
.end method

.method protected get(Lnz/co/jsalibrary/android/database/JSATypedDbBase;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1144
    .local p1, "database":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;->mMap:Ljava/util/Map;

    iget-object v3, p1, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCls:Ljava/lang/Class;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 1147
    :goto_0
    return-object v0

    .line 1145
    :cond_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;->mMap:Ljava/util/Map;

    iget-object v3, p1, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCls:Ljava/lang/Class;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1146
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1147
    .local v0, "item":Ljava/lang/Object;, "TT;"
    goto :goto_0
.end method
