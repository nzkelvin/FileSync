.class public final Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;
.super Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;
.source "RESWestpacMarkerBag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$BagListener;,
        Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacBranchMapItem;,
        Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacAtmMapItem;,
        Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacMapItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag",
        "<",
        "Ljava/lang/Object;",
        "Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacMapItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mBagListener:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$BagListener;

.field protected mCachedATMDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field protected mCachedBranchDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private mShowingATMs:Z

.field private mShowingBranches:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$BagListener;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$BagListener;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;-><init>(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 31
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 32
    :cond_0
    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->mBagListener:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$BagListener;

    .line 34
    sget v0, Lnz/co/realestate/android/lib/R$drawable;->ic_pin_westpac_atm:I

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->mCachedATMDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 35
    sget v0, Lnz/co/realestate/android/lib/R$drawable;->ic_pin_westpac_branch:I

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->mCachedBranchDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 36
    return-void
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;)Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$BagListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;

    .prologue
    .line 16
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->mBagListener:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$BagListener;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic getMapItem(Ljava/lang/Object;I)Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->getMapItem(Ljava/lang/Object;I)Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacMapItem;

    move-result-object v0

    return-object v0
.end method

.method protected getMapItem(Ljava/lang/Object;I)Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacMapItem;
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 74
    instance-of v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacAtmMapItem;

    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-direct {v0, p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacAtmMapItem;-><init>(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;)V

    .line 75
    :goto_0
    return-object v0

    .restart local p1    # "item":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacBranchMapItem;

    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-direct {v0, p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacBranchMapItem;-><init>(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;)V

    goto :goto_0
.end method

.method public isShowingATMs()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->mShowingATMs:Z

    return v0
.end method

.method public isShowingBranches()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->mShowingBranches:Z

    return v0
.end method

.method protected bridge synthetic onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;)Z
    .locals 1

    .prologue
    .line 16
    check-cast p2, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacMapItem;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacMapItem;)Z

    move-result v0

    return v0
.end method

.method protected onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacMapItem;)Z
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;
    .param p2, "mapItem"    # Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacMapItem;

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;)Z

    .line 40
    instance-of v0, p2, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacAtmMapItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->mBagListener:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$BagListener;

    check-cast p2, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacAtmMapItem;

    .end local p2    # "mapItem":Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacMapItem;
    invoke-static {p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacAtmMapItem;->access$000(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacAtmMapItem;)Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;

    move-result-object v1

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$BagListener;->showATM(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;)V

    .line 42
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 41
    .restart local p2    # "mapItem":Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacMapItem;
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->mBagListener:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$BagListener;

    check-cast p2, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacBranchMapItem;

    .end local p2    # "mapItem":Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacMapItem;
    invoke-static {p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacBranchMapItem;->access$100(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacBranchMapItem;)Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    move-result-object v1

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$BagListener;->showBranch(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;)V

    goto :goto_0
.end method

.method public setShowingATMs(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->mShowingATMs:Z

    .line 55
    return-void
.end method

.method public setShowingBranches(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->mShowingBranches:Z

    .line 67
    return-void
.end method
