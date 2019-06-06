.class Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$5;
.super Ljava/lang/Object;
.source "RESPropertyAffordabilityFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->onPaymentFrequencyRowClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    .prologue
    .line 302
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$5;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 304
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 305
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$5;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->access$300(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$5;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    invoke-static {v0, p2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->access$302(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;I)I

    .line 307
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$5;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->updateView()V

    goto :goto_0
.end method
