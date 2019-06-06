.class public abstract Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
.super Landroid/app/AlertDialog;
.source "JSADialog.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAICompositeEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;,
        Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;,
        Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;,
        Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DefaultDialogConfigurator;,
        Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;,
        Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/AlertDialog;",
        "Lnz/co/jsalibrary/android/event/JSAICompositeEventListener",
        "<",
        "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mDialogConfigurator:Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

.field private mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/event/JSACompositeEventListener",
            "<",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    .line 87
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 72
    new-instance v0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    .line 91
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 72
    new-instance v0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    .line 95
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p4, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 72
    new-instance v0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    .line 99
    iput-object p4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->mDialogConfigurator:Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    .prologue
    .line 71
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    return-object v0
.end method


# virtual methods
.method public addButtonClickHandler(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;",
            ">;)",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog;"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "handler":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 118
    return-object p0
.end method

.method protected getDialogConfigurator()Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->mDialogConfigurator:Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    return-object v0
.end method

.method protected getListener()Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/event/JSACompositeEventListener",
            "<",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    return-object v0
.end method

.method public isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->mDialogConfigurator:Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->mDialogConfigurator:Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    invoke-interface {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;->configure(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V

    .line 109
    :goto_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 110
    return-void

    .line 108
    :cond_0
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DefaultDialogConfigurator;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DefaultDialogConfigurator;-><init>()V

    invoke-virtual {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DefaultDialogConfigurator;->configure(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V

    goto :goto_0
.end method

.method public registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z
    .locals 1
    .param p2, "weaklyReferenceListener"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z

    move-result v0

    return v0
.end method

.method protected setDialogConfigurator(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V
    .locals 0
    .param p1, "configurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .prologue
    .line 158
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->mDialogConfigurator:Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .line 159
    return-void
.end method

.method public unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    return v0
.end method
