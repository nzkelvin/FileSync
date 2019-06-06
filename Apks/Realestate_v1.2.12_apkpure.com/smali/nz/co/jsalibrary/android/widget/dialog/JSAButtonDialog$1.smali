.class Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog$1;
.super Ljava/lang/Object;
.source "JSAButtonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->createButton(Ljava/lang/String;)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;

.field final synthetic val$label:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;

    .prologue
    .line 115
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;

    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog$1;->val$label:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->getListener()Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    move-result-object v0

    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog$ButtonDialogEvent;

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog$1;->val$label:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog$ButtonDialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 118
    return-void
.end method
