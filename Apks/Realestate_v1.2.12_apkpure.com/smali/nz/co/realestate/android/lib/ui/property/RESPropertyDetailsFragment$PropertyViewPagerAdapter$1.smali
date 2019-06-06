.class Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "RESPropertyDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;

    .prologue
    .line 466
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter$1;->this$1:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;

    iput p2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 468
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter$1;->this$1:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;

    iget-object v0, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->access$800(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$FragmentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter$1;->this$1:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;

    iget-object v0, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->access$800(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$FragmentListener;

    move-result-object v0

    iget v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$FragmentListener;->showListingImages(I)V

    .line 469
    :cond_0
    return-void
.end method
