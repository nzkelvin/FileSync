.class Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$4;
.super Ljava/lang/Object;
.source "RESPropertyDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    .prologue
    .line 180
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$4;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 182
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$4;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 183
    return-void
.end method
