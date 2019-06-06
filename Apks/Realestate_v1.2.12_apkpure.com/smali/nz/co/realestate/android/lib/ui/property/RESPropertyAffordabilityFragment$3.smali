.class Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$3;
.super Ljava/lang/Object;
.source "RESPropertyAffordabilityFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    .prologue
    .line 170
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$3;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 181
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 178
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$3;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mEditedHousePrice:Z

    .line 174
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$3;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->updateView()V

    .line 175
    return-void
.end method
