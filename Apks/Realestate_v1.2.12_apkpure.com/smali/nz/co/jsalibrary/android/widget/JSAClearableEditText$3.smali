.class Lnz/co/jsalibrary/android/widget/JSAClearableEditText$3;
.super Ljava/lang/Object;
.source "JSAClearableEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->initialise()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/JSAClearableEditText;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    .prologue
    .line 101
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$3;->this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$3;->this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mProxiedOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$3;->this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mProxiedOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 104
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$3;->this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->updateClearDrawable()V

    .line 105
    return-void
.end method
