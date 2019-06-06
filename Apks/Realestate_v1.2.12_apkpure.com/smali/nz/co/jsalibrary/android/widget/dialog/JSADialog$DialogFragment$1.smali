.class Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment$1;
.super Ljava/lang/Object;
.source "JSADialog.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;

    .prologue
    .line 578
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment$1;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment$1;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 578
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment$1;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment$1;"
    check-cast p1, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment$1;->onEvent(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V
    .locals 1
    .param p1, "dialogEvent"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    .prologue
    .line 580
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment$1;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment$1;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->access$100(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    .line 581
    return-void
.end method
