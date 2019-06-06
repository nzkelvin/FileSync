.class public Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;
.super Ljava/lang/Object;
.source "RESMapInfoWindowAdapter.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# instance fields
.field private final mBags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag",
            "<*+",
            "Lnz/co/realestate/android/lib/util/RESMapItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDirections:Landroid/view/View;

.field private final mIcon:Landroid/widget/ImageView;

.field private final mSnippet:Landroid/widget/TextView;

.field private final mTitle:Landroid/widget/TextView;

.field private final mWindow:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag",
            "<*+",
            "Lnz/co/realestate/android/lib/util/RESMapItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "bags":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<*+Lnz/co/realestate/android/lib/util/RESMapItem;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 36
    :cond_1
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 37
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mBags:Ljava/util/List;

    .line 39
    sget v1, Lnz/co/realestate/android/lib/R$layout;->search_map_balloon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mWindow:Landroid/view/View;

    .line 40
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mWindow:Landroid/view/View;

    sget v2, Lnz/co/realestate/android/lib/R$id;->balloon_item_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mTitle:Landroid/widget/TextView;

    .line 41
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mWindow:Landroid/view/View;

    sget v2, Lnz/co/realestate/android/lib/R$id;->balloon_item_snippet:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mSnippet:Landroid/widget/TextView;

    .line 42
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mWindow:Landroid/view/View;

    sget v2, Lnz/co/realestate/android/lib/R$id;->imageview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mIcon:Landroid/widget/ImageView;

    .line 43
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mWindow:Landroid/view/View;

    sget v2, Lnz/co/realestate/android/lib/R$id;->directions_imageview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mDirections:Landroid/view/View;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag",
            "<*+",
            "Lnz/co/realestate/android/lib/util/RESMapItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "bag":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<*+Lnz/co/realestate/android/lib/util/RESMapItem;>;"
    invoke-static {p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->toList(Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 32
    return-void
.end method

.method private getMapItem(Lcom/google/android/gms/maps/model/Marker;)Lnz/co/realestate/android/lib/util/RESMapItem;
    .locals 4
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 89
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mBags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;

    .line 90
    .local v0, "bag":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<*+Lnz/co/realestate/android/lib/util/RESMapItem;>;"
    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->getMapItem(Lcom/google/android/gms/maps/model/Marker;)Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/util/RESMapItem;

    .line 91
    .local v1, "mapItem":Lnz/co/realestate/android/lib/util/RESMapItem;
    if-eqz v1, :cond_0

    .line 94
    .end local v0    # "bag":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<*+Lnz/co/realestate/android/lib/util/RESMapItem;>;"
    .end local v1    # "mapItem":Lnz/co/realestate/android/lib/util/RESMapItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private render(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 5
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->getMapItem(Lcom/google/android/gms/maps/model/Marker;)Lnz/co/realestate/android/lib/util/RESMapItem;

    move-result-object v0

    .line 69
    .local v0, "mapItem":Lnz/co/realestate/android/lib/util/RESMapItem;
    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 75
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mSnippet:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mSnippet:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    if-eqz v0, :cond_1

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/util/RESMapItem;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lnz/co/realestate/android/lib/R$drawable;->bg_map_balloon:I

    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 79
    :cond_1
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mWindow:Landroid/view/View;

    if-eqz v0, :cond_6

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    if-eqz v0, :cond_2

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/util/RESMapItem;->isSelectable()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    :cond_2
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mDirections:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 85
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 71
    goto :goto_1

    :cond_4
    move v1, v3

    .line 75
    goto :goto_2

    .line 78
    :cond_5
    sget v1, Lnz/co/realestate/android/lib/R$drawable;->bg_map_balloon_base:I

    goto :goto_3

    .line 79
    :cond_6
    const/4 v1, 0x4

    goto :goto_4

    :cond_7
    move v2, v3

    .line 81
    goto :goto_5
.end method

.method private static toList(Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag",
            "<*+",
            "Lnz/co/realestate/android/lib/util/RESMapItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag",
            "<*+",
            "Lnz/co/realestate/android/lib/util/RESMapItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "bag":Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;, "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<*+Lnz/co/realestate/android/lib/util/RESMapItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<*+Lnz/co/realestate/android/lib/util/RESMapItem;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-object v0
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->render(Lcom/google/android/gms/maps/model/Marker;)V

    .line 58
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;->mWindow:Landroid/view/View;

    return-object v0
.end method
