.class public Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;
.super Ljava/lang/Object;
.source "JSASaveFileDialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lnz/co/jsalibrary/android/event/JSAICompositeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ClickHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Lnz/co/jsalibrary/android/event/JSAICompositeEventListener",
        "<",
        "Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;",
        ">;"
    }
.end annotation


# instance fields
.field protected mController:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;

.field protected mEventType:Ljava/lang/String;

.field protected mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/event/JSACompositeEventListener",
            "<",
            "Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    .line 183
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->mEventType:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method public isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->mController:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->mEventType:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 196
    return-void
.end method

.method public onEvent()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->mController:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->mEventType:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 192
    return-void
.end method

.method public registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

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
            "Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z

    move-result v0

    return v0
.end method

.method protected setController(Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;)V
    .locals 0
    .param p1, "controller"    # Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;

    .prologue
    .line 187
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->mController:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;

    .line 188
    return-void
.end method

.method public unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    return v0
.end method
