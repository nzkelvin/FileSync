.class Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$5;
.super Ljava/lang/Object;
.source "RESHomeFragmentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;

    .prologue
    .line 152
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$5;->this$0:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$5;->this$0:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;

    iget-object v0, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mAnimatingLayout:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$5;->this$0:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;

    iget-object v0, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mAnimatingLayout:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->animateInPlace()V

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$5$1;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$5$1;-><init>(Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$5;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
