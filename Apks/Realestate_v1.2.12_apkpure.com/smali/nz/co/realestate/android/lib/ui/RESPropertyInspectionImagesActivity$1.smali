.class Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$1;
.super Ljava/lang/Object;
.source "RESPropertyInspectionImagesActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$1;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 74
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 75
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$1;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;

    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->updateView(I)V

    .line 78
    return-void
.end method
