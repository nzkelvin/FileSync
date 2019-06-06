.class Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$7;
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
    .line 172
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$7;->this$0:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$7;->this$0:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->onListingClick()V

    .line 175
    return-void
.end method
