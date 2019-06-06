.class Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$3;
.super Ljava/lang/Object;
.source "RESOpenHomesMapFragmentActivity.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


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
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<",
        "Lnz/co/jsalibrary/android/tuple/JSATuple",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
        ">;",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$3;->this$0:Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    check-cast p1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$3;->map(Lnz/co/jsalibrary/android/tuple/JSATuple;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    move-result-object v0

    return-object v0
.end method

.method public map(Lnz/co/jsalibrary/android/tuple/JSATuple;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;)",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "item":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;"
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    return-object v0
.end method
