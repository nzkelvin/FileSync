.class Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$2;
.super Ljava/lang/Object;
.source "RESSearchLocationFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    .prologue
    .line 83
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$2;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 85
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 84
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$2;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$100(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)V

    return-void
.end method
