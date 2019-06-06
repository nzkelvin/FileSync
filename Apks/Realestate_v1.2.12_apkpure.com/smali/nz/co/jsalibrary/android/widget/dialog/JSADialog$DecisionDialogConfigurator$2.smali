.class Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator$2;
.super Ljava/lang/Object;
.source "JSADialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;->configure(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;

.field final synthetic val$dialog:Lnz/co/jsalibrary/android/widget/dialog/JSADialog;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;

    .prologue
    .line 301
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator$2;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;

    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator$2;->val$dialog:Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator$2;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator$2;->val$dialog:Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;->onNegativeButtonClick(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V

    .line 304
    return-void
.end method
