.class public Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;
.super Ljava/lang/Object;
.source "JSATypedDbBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/database/JSATypedDbBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UpdateMap"
.end annotation


# instance fields
.field protected mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 1161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;->mMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected add(Lnz/co/jsalibrary/android/database/JSATypedDbBase;Ljava/lang/String;)V
    .locals 4
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1166
    .local p1, "database":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<*>;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;->mMap:Ljava/util/Map;

    iget-object v2, p1, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCls:Ljava/lang/Class;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;->mMap:Ljava/util/Map;

    iget-object v2, p1, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCls:Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;->mMap:Ljava/util/Map;

    iget-object v2, p1, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCls:Ljava/lang/Class;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1168
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    :cond_1
    return-void
.end method

.method protected contains(Lnz/co/jsalibrary/android/database/JSATypedDbBase;Ljava/lang/String;)Z
    .locals 3
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1173
    .local p1, "database":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<*>;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;->mMap:Ljava/util/Map;

    iget-object v2, p1, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCls:Ljava/lang/Class;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1175
    :goto_0
    return v1

    .line 1174
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;->mMap:Ljava/util/Map;

    iget-object v2, p1, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCls:Ljava/lang/Class;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1175
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method
