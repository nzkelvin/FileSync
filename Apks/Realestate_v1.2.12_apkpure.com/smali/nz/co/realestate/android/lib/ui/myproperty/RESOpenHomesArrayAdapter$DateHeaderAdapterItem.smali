.class public Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;
.super Ljava/lang/Object;
.source "RESOpenHomesArrayAdapter.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateHeaderAdapterItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2fd2ee2895b82c83L


# instance fields
.field private final mDate:Ljava/util/Date;

.field private final mOpenHomes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Date;)V
    .locals 1
    .param p2, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;>;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "homes":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 143
    :cond_1
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;->mOpenHomes:Ljava/util/List;

    .line 144
    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;->mDate:Ljava/util/Date;

    .line 145
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getOpenHomes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;->mOpenHomes:Ljava/util/List;

    return-object v0
.end method
