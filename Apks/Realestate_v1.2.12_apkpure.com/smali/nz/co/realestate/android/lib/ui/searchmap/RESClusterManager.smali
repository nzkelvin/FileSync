.class public final Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;
.super Ljava/lang/Object;
.source "RESClusterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager$ClusterChangeListener;
    }
.end annotation


# static fields
.field private static final MAX_CLUSTERS_PER_LEVEL:I = 0x64

.field private static final MAX_ZOOM_LEVEL_CLUSTERED_LEVEL:I = 0x64


# instance fields
.field private mClusterChangeListener:Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager$ClusterChangeListener;

.field private mZoomClusterClusteredMap:Landroid/util/SparseBooleanArray;

.field private mZoomClusterMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager$ClusterChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager$ClusterChangeListener;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cluster change listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->mZoomClusterMap:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->mZoomClusterClusteredMap:Landroid/util/SparseBooleanArray;

    .line 31
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->mClusterChangeListener:Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager$ClusterChangeListener;

    .line 32
    return-void
.end method

.method private areClustersClustered(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "clusters":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;>;"
    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    .line 110
    .local v0, "cluster":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listings:Ljava/util/List;

    if-eqz v3, :cond_1

    iget v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listing_count:I

    if-nez v3, :cond_2

    .line 113
    .end local v0    # "cluster":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    :cond_1
    :goto_0
    return v1

    .line 111
    .restart local v0    # "cluster":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    :cond_2
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getLatitudeSpan()D

    move-result-wide v4

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getLongitudeSpan()D

    move-result-wide v4

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    goto :goto_0

    .line 113
    .end local v0    # "cluster":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addClusters(ILjava/util/List;)V
    .locals 1
    .param p1, "zoomLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "clusters":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->addClusters(ILjava/util/List;Z)V

    .line 49
    return-void
.end method

.method public addClusters(ILjava/util/List;Z)V
    .locals 2
    .param p1, "zoomLevel"    # I
    .param p3, "preventClusterChangeEvent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "clusters":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;>;"
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->mZoomClusterMap:Landroid/util/SparseArray;

    const/16 v1, 0x64

    invoke-static {p2, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->trim(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->mZoomClusterClusteredMap:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->areClustersClustered(Ljava/util/List;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 55
    if-nez p3, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->mClusterChangeListener:Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager$ClusterChangeListener;

    invoke-interface {v0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager$ClusterChangeListener;->onClusterChange(I)V

    .line 56
    :cond_0
    return-void
.end method

.method public bestClusterLevel(I)I
    .locals 6
    .param p1, "level"    # I

    .prologue
    .line 69
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->mZoomClusterMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 80
    .end local p1    # "level":I
    :cond_0
    :goto_0
    return p1

    .line 70
    .restart local p1    # "level":I
    :cond_1
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->mZoomClusterMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 71
    const v4, 0x7fffffff

    .line 72
    .local v4, "smallestDistance":I
    move v0, p1

    .line 73
    .local v0, "bestLevel":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->mZoomClusterMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 74
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->mZoomClusterMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 75
    .local v3, "mapLevel":I
    sub-int v5, p1, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 76
    .local v1, "distance":I
    if-le v1, v4, :cond_2

    .line 73
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 77
    :cond_2
    move v4, v1

    .line 78
    move v0, v3

    goto :goto_2

    .end local v1    # "distance":I
    .end local v3    # "mapLevel":I
    :cond_3
    move p1, v0

    .line 80
    goto :goto_0
.end method

.method public bestClustersForLevel(I)Ljava/util/List;
    .locals 3
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->mZoomClusterMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->mZoomClusterMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->bestClusterLevel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 87
    .local v0, "clusters":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "clusters":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public clearClusters()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->mZoomClusterMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 40
    return-void
.end method

.method public isZoomLevelClustered(I)Z
    .locals 2
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x0

    .line 95
    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->mZoomClusterClusteredMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->mZoomClusterClusteredMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public triggerClusterChangeEvent(I)V
    .locals 1
    .param p1, "zoomLevel"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->mClusterChangeListener:Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager$ClusterChangeListener;

    invoke-interface {v0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager$ClusterChangeListener;->onClusterChange(I)V

    .line 61
    return-void
.end method
