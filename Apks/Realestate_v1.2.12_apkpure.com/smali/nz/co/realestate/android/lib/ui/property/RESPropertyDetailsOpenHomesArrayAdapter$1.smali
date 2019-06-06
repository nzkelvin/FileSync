.class Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$1;
.super Ljava/lang/Object;
.source "RESPropertyDetailsOpenHomesArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->updateRow(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;

.field final synthetic val$home:Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;

    .prologue
    .line 54
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$1;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$1;->val$home:Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$1;->val$home:Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$1;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->access$100(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$1;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->onProperty(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/content/Context;)V

    .line 57
    return-void
.end method
