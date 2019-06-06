.class Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$4;
.super Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;
.source "RESPropertyAffordabilityFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;JZ)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;
    .param p2, "x0"    # J
    .param p4, "x1"    # Z

    .prologue
    .line 193
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$4;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    invoke-direct {p0, p2, p3, p4}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(JZ)V

    return-void
.end method


# virtual methods
.method public tick()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$4;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->updateView()V

    .line 196
    return-void
.end method
