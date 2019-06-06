.class Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$1;
.super Ljava/lang/Object;
.source "RESSearchMapActivityBase.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    .prologue
    .line 160
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$1;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 163
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 161
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 166
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$1;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$000(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)V

    .line 168
    :goto_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$1;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->supportInvalidateOptionsMenu()V

    .line 169
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$1;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$100(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;Z)Z

    goto :goto_0
.end method
