.class public Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;
.super Ljava/lang/Object;
.source "RESMarkerBag.java"

# interfaces
.implements Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleMapItem"
.end annotation


# instance fields
.field private final mOptions:Lcom/google/android/gms/maps/model/MarkerOptions;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;-><init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    .locals 1
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;
    .param p4, "icon"    # Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 228
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;->mOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 229
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;->mOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 230
    if-eqz p2, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;->mOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 231
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;->mOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 232
    :cond_2
    if-eqz p4, :cond_3

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;->mOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 233
    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/MarkerOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/google/android/gms/maps/model/MarkerOptions;

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;->mOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 220
    return-void
.end method


# virtual methods
.method public getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;->mOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    return-object v0
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 1
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 1
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchor(FF)V
    .locals 1
    .param p1, "u"    # F
    .param p2, "v"    # F

    .prologue
    .line 269
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;->mOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 270
    return-void
.end method

.method public setAnchor(Lnz/co/jsalibrary/android/tuple/JSATuple;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "anchor":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Float;Ljava/lang/Float;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;->setDefaultAnchor()V

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;->setAnchor(FF)V

    goto :goto_0
.end method

.method public setDefaultAnchor()V
    .locals 2

    .prologue
    .line 256
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;->setAnchor(FF)V

    .line 257
    return-void
.end method

.method public setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    .locals 1
    .param p1, "icon"    # Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .prologue
    .line 248
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;->mOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 249
    return-void
.end method
