.class public abstract Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;
.super Ljava/lang/Object;
.source "RESMarkerBag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;,
        Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "M::",
        "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private final mMapItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "TM;>;"
        }
    .end annotation
.end field

.field private mShowMapMarkers:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 36
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mItems:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mMapItems:Ljava/util/Map;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mShowMapMarkers:Z

    .line 37
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 39
    return-void
.end method

.method private declared-synchronized addMapMarkers()V
    .locals 7

    .prologue
    .line 148
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mShowMapMarkers:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 167
    :goto_0
    monitor-exit p0

    return-void

    .line 151
    :cond_0
    :try_start_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " markers"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->resetTime()V

    .line 153
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime()V

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 157
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 158
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->getMapItem(Ljava/lang/Object;I)Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;

    move-result-object v3

    .line 159
    .local v3, "markerBagItem":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;, "TM;"
    if-nez v3, :cond_1

    .line 156
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    :cond_1
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-interface {v3}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;->getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    .line 161
    .local v2, "marker":Lcom/google/android/gms/maps/model/Marker;
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mMapItems:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 148
    .end local v0    # "i":I
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    .end local v2    # "marker":Lcom/google/android/gms/maps/model/Marker;
    .end local v3    # "markerBagItem":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;, "TM;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 165
    .restart local v0    # "i":I
    :cond_2
    :try_start_2
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized removeMapMarkers()V
    .locals 3

    .prologue
    .line 138
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mMapItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 139
    .local v0, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    .end local v0    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 140
    :cond_0
    :try_start_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mMapItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public addItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mShowMapMarkers:Z

    invoke-virtual {p0, p1, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->addItems(Ljava/util/List;Z)V

    .line 52
    return-void
.end method

.method public addItems(Ljava/util/List;Z)V
    .locals 1
    .param p2, "showMapMarkers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 56
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mShowMapMarkers:Z

    if-eq p2, v0, :cond_2

    invoke-virtual {p0, p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->setShowMapMarkers(Z)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->updateMapMarkers()V

    goto :goto_0
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->updateMapMarkers()V

    .line 48
    return-void
.end method

.method protected final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 97
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final getItemCount()I
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method protected final declared-synchronized getMapItem(Lcom/google/android/gms/maps/model/Marker;)Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/Marker;",
            ")TM;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mMapItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getMapItem(Ljava/lang/Object;I)Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TM;"
        }
    .end annotation
.end method

.method public final isShowMapMarkers()Z
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mShowMapMarkers:Z

    return v0
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 174
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->getMapItem(Lcom/google/android/gms/maps/model/Marker;)Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;

    move-result-object v0

    .line 175
    .local v0, "mapItem":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;, "TM;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 176
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;)Z
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/Marker;",
            "TM;)Z"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    .local p2, "mapItem":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;, "TM;"
    invoke-interface {p2, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result v0

    return v0
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 188
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->getMapItem(Lcom/google/android/gms/maps/model/Marker;)Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;

    move-result-object v0

    .line 189
    .local v0, "mapItem":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;, "TM;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 190
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onMarkerClick(Lcom/google/android/gms/maps/model/Marker;Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;)Z
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/Marker;",
            "TM;)Z"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    .local p2, "mapItem":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;, "TM;"
    invoke-interface {p2, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result v0

    return v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mShowMapMarkers:Z

    invoke-virtual {p0, p1, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->setItems(Ljava/util/List;Z)V

    .line 64
    return-void
.end method

.method public setItems(Ljava/util/List;Z)V
    .locals 1
    .param p2, "showMapMarkers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .restart local p1    # "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mShowMapMarkers:Z

    if-eq p2, v0, :cond_1

    invoke-virtual {p0, p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->setShowMapMarkers(Z)V

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->updateMapMarkers()V

    goto :goto_0
.end method

.method public setShowMapMarkers(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 109
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mShowMapMarkers:Z

    if-ne p1, v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-boolean p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->mShowMapMarkers:Z

    .line 111
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->updateMapMarkers()V

    goto :goto_0
.end method

.method protected updateMapMarkers()V
    .locals 0

    .prologue
    .line 129
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<TT;TM;>;"
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->removeMapMarkers()V

    .line 130
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->addMapMarkers()V

    .line 131
    return-void
.end method
