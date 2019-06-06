.class Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$4;
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
    .line 145
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$4;->this$0:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$4;->this$0:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;

    iget-object v0, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mFragmentListener:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$4;->this$0:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;

    iget-object v0, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mFragmentListener:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$FragmentListener;

    invoke-interface {v0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$FragmentListener;->onMyPropertyPressed()V

    .line 148
    :cond_0
    return-void
.end method
