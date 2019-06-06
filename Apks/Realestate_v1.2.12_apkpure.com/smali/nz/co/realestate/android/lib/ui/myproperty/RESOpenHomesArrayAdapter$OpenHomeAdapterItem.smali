.class public Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;
.super Ljava/lang/Object;
.source "RESOpenHomesArrayAdapter.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;
.implements Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowListing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenHomeAdapterItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x63d01e4f5341fbfaL


# instance fields
.field private final mOpenHome:Lnz/co/jsalibrary/android/tuple/JSATuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/tuple/JSATuple;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "home":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 166
    :cond_0
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;->mOpenHome:Lnz/co/jsalibrary/android/tuple/JSATuple;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;)Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;

    .prologue
    .line 160
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;->mOpenHome:Lnz/co/jsalibrary/android/tuple/JSATuple;

    return-object v0
.end method


# virtual methods
.method public getListing()Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;->mOpenHome:Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    return-object v0
.end method

.method public getOpenHomeTuple()Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;->mOpenHome:Lnz/co/jsalibrary/android/tuple/JSATuple;

    return-object v0
.end method
