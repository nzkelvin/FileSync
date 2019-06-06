.class Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator$1;
.super Ljava/lang/Object;
.source "JSAConfigureProxyDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;->configure(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;

.field final synthetic val$proxyDialog:Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;

    .prologue
    .line 178
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;

    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator$1;->val$proxyDialog:Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator$1;->val$proxyDialog:Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;->updateDialogView(Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;)V

    .line 181
    return-void
.end method
