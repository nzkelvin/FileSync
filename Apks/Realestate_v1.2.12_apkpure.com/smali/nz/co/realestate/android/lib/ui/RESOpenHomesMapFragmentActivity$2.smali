.class Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$2;
.super Ljava/lang/Object;
.source "RESOpenHomesMapFragmentActivity.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->initialiseMapView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction",
        "<",
        "Lnz/co/jsalibrary/android/tuple/JSATuple",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;

    .prologue
    .line 160
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic filter(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 160
    check-cast p1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$2;->filter(Lnz/co/jsalibrary/android/tuple/JSATuple;)Z

    move-result v0

    return v0
.end method

.method public filter(Lnz/co/jsalibrary/android/tuple/JSATuple;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "item":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;"
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->getLongitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
