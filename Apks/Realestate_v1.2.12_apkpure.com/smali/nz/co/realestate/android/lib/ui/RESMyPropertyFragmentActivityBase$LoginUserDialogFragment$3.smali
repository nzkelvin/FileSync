.class Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$3;
.super Ljava/lang/Object;
.source "RESMyPropertyFragmentActivityBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;

    .prologue
    .line 344
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$3;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 346
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 347
    return-void
.end method
