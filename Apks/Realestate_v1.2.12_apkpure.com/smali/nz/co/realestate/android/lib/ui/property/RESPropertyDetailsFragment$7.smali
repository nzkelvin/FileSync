.class Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$7;
.super Ljava/lang/Object;
.source "RESPropertyDetailsFragment.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->onOpenHomeTimesClick()V
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
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    .prologue
    .line 392
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$7;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 392
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$7;->map(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public map(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .prologue
    .line 393
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$7;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->getOpenHomeText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
