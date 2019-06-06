.class Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$1;
.super Ljava/lang/Object;
.source "RESPropertyImagesFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    .prologue
    .line 76
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 82
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 81
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-static {v0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->access$102(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;I)I

    .line 79
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->access$200(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)V

    .line 80
    return-void
.end method
