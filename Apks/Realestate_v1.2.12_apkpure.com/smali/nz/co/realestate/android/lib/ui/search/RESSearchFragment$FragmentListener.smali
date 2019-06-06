.class public interface abstract Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;
.super Ljava/lang/Object;
.source "RESSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FragmentListener"
.end annotation


# virtual methods
.method public abstract onUpdateFloorArea(Ljava/util/List;Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;II)V"
        }
    .end annotation
.end method

.method public abstract onUpdatePrice(Ljava/util/List;Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;II)V"
        }
    .end annotation
.end method

.method public abstract showListing(I)V
.end method

.method public abstract showListings(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)V
.end method

.method public abstract showMapView(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
.end method
